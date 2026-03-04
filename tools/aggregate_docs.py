#!/usr/bin/env python3
from __future__ import annotations

import argparse
from datetime import datetime, timezone
from pathlib import Path

DOC_NAME = "DOCUMENTAZIONE.md"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Aggrega tutti i DOCUMENTAZIONE.md in un unico file markdown."
    )
    parser.add_argument(
        "--root",
        default=".",
        help="Radice del repository da scansionare (default: .)",
    )
    parser.add_argument(
        "--output",
        default="docs/DOCUMENTAZIONE_AGGREGATA.md",
        help="Percorso file output aggregato (default: docs/DOCUMENTAZIONE_AGGREGATA.md)",
    )
    parser.add_argument(
        "--exclude",
        action="append",
        default=[],
        help="Prefisso percorso relativo da escludere (ripetibile)",
    )
    return parser.parse_args()


def should_exclude(rel_path: str, excludes: list[str]) -> bool:
    return any(rel_path == ex or rel_path.startswith(ex + "/") for ex in excludes)


def collect_docs(root: Path, excludes: list[str]) -> list[Path]:
    docs: list[Path] = []
    for p in root.rglob(DOC_NAME):
        rel = p.relative_to(root).as_posix()
        if rel.startswith(".git/"):
            continue
        if should_exclude(rel, excludes):
            continue
        docs.append(p)
    docs.sort(key=lambda p: p.relative_to(root).as_posix())
    return docs


def section_title(rel: str) -> str:
    folder = rel[: -len("/" + DOC_NAME)] if rel.endswith("/" + DOC_NAME) else "."
    if folder == "":
        folder = "."
    return folder


def main() -> int:
    args = parse_args()
    root = Path(args.root).resolve()
    out = (root / args.output).resolve() if not Path(args.output).is_absolute() else Path(args.output)

    excludes = [e.strip("/") for e in args.exclude if e.strip()]
    docs = collect_docs(root, excludes)

    out.parent.mkdir(parents=True, exist_ok=True)

    now = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")

    lines: list[str] = []
    lines.append("# Documentazione Aggregata Repository")
    lines.append("")
    lines.append(f"- Radice: `{root}`")
    lines.append(f"- Generato il: `{now}`")
    lines.append(f"- File aggregati: `{len(docs)}`")
    if excludes:
        lines.append(f"- Esclusioni: `{', '.join(excludes)}`")
    lines.append("")
    lines.append("## Indice Cartelle")
    lines.append("")

    for p in docs:
        rel = p.relative_to(root).as_posix()
        folder = section_title(rel)
        anchor = folder.replace("/", "-").replace(".", "").replace(" ", "-").lower()
        if not anchor:
            anchor = "root"
        lines.append(f"- [{folder}](#{anchor})")

    lines.append("")
    lines.append("---")
    lines.append("")

    for p in docs:
        rel = p.relative_to(root).as_posix()
        folder = section_title(rel)
        lines.append(f"## {folder}")
        lines.append("")
        lines.append(f"_Sorgente: `{rel}`_")
        lines.append("")
        content = p.read_text(encoding="utf-8", errors="ignore").rstrip()
        lines.append(content)
        lines.append("")
        lines.append("---")
        lines.append("")

    out.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")
    print(f"Creato: {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
