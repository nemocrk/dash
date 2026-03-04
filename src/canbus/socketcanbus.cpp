#include "canbus/socketcanbus.hpp"

SocketCANBus::SocketCANBus(QString canInterface)
{
    if (QCanBus::instance()->plugins().contains(QStringLiteral("socketcan"))) {
        DASH_LOG(info) << "[SocketCANBus] 'socketcan' Available";
        socketCANAvailable = true;
        QString errorString;
        bus = QCanBus::instance()->createDevice(
            QStringLiteral("socketcan"), canInterface, &errorString);
        if (!bus) {
            DASH_LOG(error) <<"[SocketCANBus] Error creating CAN device, " << errorString.toStdString();
        } else {
            DASH_LOG(info) <<"[SocketCANBus] Connecting CAN interface "<<canInterface.toStdString();
            bus->connectDevice();
            connect(bus, &QCanBusDevice::framesReceived,
                     this, &SocketCANBus::framesAvailable);
        }
    }
}

SocketCANBus::~SocketCANBus()
{
    DASH_LOG(info) << "[SocketCANBus] Disconnecting and deleting bus";
    if(bus != nullptr && bus->state() == QCanBusDevice::ConnectedState){
        bus->disconnectDevice();
    }
}

bool SocketCANBus::writeFrame(QCanBusFrame frame)
{
    if (bus == nullptr) {
        if (socketCANAvailable) {
            DASH_LOG(error) << "[SocketCANBus] Cannot write frame: bus not initialized";
        }
        return false;
    }
    return bus->writeFrame(frame);
}

SocketCANBus *SocketCANBus::get_instance()
{
    static SocketCANBus bus(Config::get_instance()->get_vehicle_interface());
    return &bus;
}

// QSerialBus readAllFrames introduced in 5.12 - Pi OS is stuck on 5.11, so implement our own
QVector<QCanBusFrame> SocketCANBus::readAllFrames(int numFrames){
    QVector<QCanBusFrame> frames = QVector<QCanBusFrame>();
    if (bus == nullptr) {
        return frames;
    }
    for(int i = 0; i<numFrames; i++){
        frames.append(bus->readFrame());
    }
    return frames;
}

void SocketCANBus::framesAvailable()
{
    if (bus == nullptr) {
        return;
    }
    int numFrames = bus->framesAvailable();
    if(numFrames>0){
        QVector<QCanBusFrame> frames =  readAllFrames(numFrames);
        for(int i = 0; i<frames.length(); i++){
            QCanBusFrame frame = frames.at(i);
            if (callbacks.find(frame.frameId()) != callbacks.end())
            {
                for(auto callback : callbacks[frame.frameId()]){
                    callback(frame.payload());
                }
            }
        }
    }
    
} 


void SocketCANBus::registerFrameHandler(int id, std::function<void(QByteArray)> callback)
{
    callbacks[id].push_back(callback);
    if (bus == nullptr) {
        if (socketCANAvailable) {
            DASH_LOG(warning) << "[SocketCANBus] Cannot apply CAN filter: bus not initialized";
        }
        return;
    }
    QCanBusDevice::Filter filter;
    filter.frameId = id;
    filter.frameIdMask = 0xFFF;
    filter.format=QCanBusDevice::Filter::MatchBaseAndExtendedFormat;
    filter.type = QCanBusFrame::InvalidFrame;
    filterList.append(filter);
    bus->setConfigurationParameter(QCanBusDevice::RawFilterKey, QVariant::fromValue(filterList));
}
