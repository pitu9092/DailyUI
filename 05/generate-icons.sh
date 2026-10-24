#!/bin/bash
# WeatherWise Icon Generator
# Usage: ./generate-icons.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "🎨 WeatherWise Icon Generator"
echo "=============================="
echo ""

# Check for required tools
if ! command -v convert &> /dev/null; then
    echo "❌ ImageMagick 'convert' not found!"
    echo "   Install: sudo apt-get install imagemagick (Ubuntu/Debian)"
    echo "            brew install imagemagick (macOS)"
    exit 1
fi

# Check source SVG
if [ ! -f "weatherwise-icon.svg" ]; then
    echo "❌ weatherwise-icon.svg not found!"
    exit 1
fi

echo "✓ ImageMagick found"
echo "✓ Source SVG found"
echo ""

# Create directories
mkdir -p sizes ios-icons

# Generate standard sizes
echo "📦 Generating standard PNG sizes..."
for size in 16 32 48 64 128 256 512 1024; do
    echo -n "  ${size}×${size}... "
    convert weatherwise-icon.svg -resize ${size}x${size} sizes/${size}.png
    echo "✓"
done

# Generate iOS icon set
echo ""
echo "🍎 Generating iOS icon set..."
IOS_SIZES=(20 29 40 60 76 80 87 120 152 167 180)

for size in "${IOS_SIZES[@]}"; do
    # 2x version
    if [ $((size * 2)) -le 1024 ]; then
        echo -n "  ${size}@2x (${size*2}px)... "
        convert weatherwise-icon.svg -resize $((size * 2))x$((size * 2)) ios-icons/icon-${size}@2x.png
        echo "✓"
    fi

    # 1x version (only for sizes where 1x is needed)
    case $size in
        20|29|40|60|76|80|87|120|152|167|180|1024)
            echo -n "  ${size} (${size}px)... "
            convert weatherwise-icon.svg -resize ${size}x${size} ios-icons/icon-${size}.png
            echo "✓"
            ;;
    esac
done

# Generate favicon.ico (multi-resolution)
echo ""
echo "🌐 Generating favicon.ico..."
convert sizes/16.png sizes/32.png sizes/48.png sizes/64.png favicon.ico
echo "  ✓ favicon.ico created with 16, 32, 48, 64px"

# Summary
echo ""
echo "✅ All icons generated successfully!"
echo ""
echo "📁 Output:"
echo "   └── sizes/         (8 standard PNGs: 16–1024px)"
echo "   └── ios-icons/     (22 iOS-optimized PNGs)"
echo "   └── favicon.ico    (multi-res favicon)"
echo ""
echo "Total files: $(find sizes ios-icons -name "*.png" 2>/dev/null | wc -l) PNGs + favicon.ico"
echo ""
echo "🚀 Ready for:"
echo "   • iOS (App Store Connect) → use ios-icons/icon-1024.png"
echo "   • Android (Play Store)    → use sizes/512.png or svg"
echo "   • Web (favicon)          → use favicon.ico"
echo ""