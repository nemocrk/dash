#pragma once

#include <f1x/openauto/autoapp/App.hpp>
#include <functional>
#include <utility>

namespace openauto {

class App : public f1x::openauto::autoapp::App {
public:
    using Base = f1x::openauto::autoapp::App;
    using ConnectionStateCallback = std::function<void(bool)>;
    using Base::Base;

    void setConnectionStateCallback(ConnectionStateCallback callback)
    {
        connectionStateCallback_ = std::move(callback);
    }

    void onAndroidAutoQuit() override
    {
        if (connectionStateCallback_) {
            connectionStateCallback_(false);
        }
        Base::onAndroidAutoQuit();
    }

private:
    ConnectionStateCallback connectionStateCallback_;
};

}
