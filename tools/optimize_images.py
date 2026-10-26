"""Optimize storefront images while keeping the process reproducible.

Run from the repository root:
    python tools/optimize_images.py
"""

from __future__ import annotations

from pathlib import Path
from tempfile import NamedTemporaryFile

from PIL import Image, ImageOps


ROOT = Path(__file__).resolve().parents[1]
IMAGE_DIR = ROOT / "NetCuoiKy" / "Areas" / "Client" / "images"


def save_jpeg(source: Path, destination: Path, max_size: tuple[int, int]) -> tuple[int, int]:
    before = source.stat().st_size
    with Image.open(source) as opened:
        image = ImageOps.exif_transpose(opened).convert("RGB")
        image.thumbnail(max_size, Image.Resampling.LANCZOS)
        image.save(destination, "JPEG", quality=78, optimize=True, progressive=True)
    return before, destination.stat().st_size


def optimize_existing_jpeg(path: Path) -> tuple[int, int] | None:
    before = path.stat().st_size
    with NamedTemporaryFile(suffix=".jpg", delete=False, dir=path.parent) as temp:
        temp_path = Path(temp.name)

    try:
        save_jpeg(path, temp_path, (1600, 1600))
        after = temp_path.stat().st_size
        if after >= before:
            return None
        temp_path.replace(path)
        return before, after
    finally:
        temp_path.unlink(missing_ok=True)


def main() -> None:
    total_before = 0
    total_after = 0
    changed = 0

    hero_source = IMAGE_DIR / "image1.png"
    hero_destination = IMAGE_DIR / "image1-optimized.jpg"
    before, after = save_jpeg(hero_source, hero_destination, (1100, 1100))
    total_before += before
    total_after += after
    changed += 1
    print(f"hero: {before:,} -> {after:,} bytes")

    for path in sorted(IMAGE_DIR.glob("*.jp*g")):
        if path == hero_destination:
            continue
        result = optimize_existing_jpeg(path)
        if result is None:
            continue
        before, after = result
        total_before += before
        total_after += after
        changed += 1

    saved = total_before - total_after
    print(f"optimized {changed} images; saved {saved:,} bytes in changed assets")


if __name__ == "__main__":
    main()
