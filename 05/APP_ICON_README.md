# WeatherWise App Icon — Daily UI #005

A modern, distinctive app icon designed for a weather forecasting app. Features a stylized sun with rays and a fluffy cloud in a deep blue gradient, with animated sparkle effects.

## 📁 Files

```
05/
├── index.html                    # Main showcase page
├── app-icon.html                 # Interactive icon showcase
├── weatherwise-icon.svg          # Vector source (512×512)
├── weatherwise-icon-1024-nomask.svg  # iOS icon (no rounded corners)
├── android-adaptive-bg.svg       # Android adaptive icon background
├── README_ICON.md               # Icon package documentation
├── sizes/                       # PNG icons at various sizes
│   ├── 16.png
│   ├── 32.png
│   ├── 48.png
│   ├── 64.png
│   ├── 128.png
│   ├── 256.png
│   ├── 512.png
│   └── 1024.png
└── ios-icons/                   # Complete iOS icon set (App Store Connect ready)
    ├── icon-20.png
    ├── icon-20@2x.png
    ├── icon-29.png
    ├── icon-29@2x.png
    ├── icon-40.png
    ├── icon-40@2x.png
    ├── icon-60.png
    ├── icon-60@2x.png
    ├── icon-76.png
    ├── icon-76@2x.png
    ├── icon-80.png
    ├── icon-80@2x.png
    ├── icon-87.png
    ├── icon-87@2x.png
    ├── icon-120.png
    ├── icon-120@2x.png
    ├── icon-152.png
    ├── icon-152@2x.png
    ├── icon-167.png
    ├── icon-167@2x.png
    ├── icon-180.png
    ├── icon-180@2x.png
    └── icon-1024.png
```

## 🎨 Design Specifications

**Dimensions**: 512×512px (base vector)  
**Aspect Ratio**: 1:1  
**Corner Radius**: 22% (120px) — conforms to iOS Human Interface Guidelines

**Color Palette**:
| Element | Colors |
|---------|--------|
| Background | `#0f172a` → `#1e40af` → `#1e3a8a` (linear gradient) |
| Sun | `#fbbf24` → `#f59e0b` |
| Cloud | `#ffffff` → `#cbd5e1` |
| Accent | `#38bdf8` (cyan sparkles) |

**Elements**:
- Stylized sun with 8 rays (upper-left focal point)
- Multi-layered cloud cluster (lower-right)
- 3 animated sparkle dots (cyan & gold)
- Soft glow filters for iOS depth effect

## ✨ Key Features

1. **Scalable Vector** — SVG format scales perfectly from 16px to 1024px
2. **High Contrast** — Maintains recognition on any background
3. **Distinctive Silhouette** — Uniquely identifiable among weather apps
4. **Animated Details** — Subtle sparkle animation in the app
5. **Platform Optimized** — Separate versions for iOS, Android, and web

## 📱 Platform Usage

### iOS
- Use `weatherwise-icon-1024-nomask.svg` for App Store Connect upload
- Xcode will generate all required sizes automatically from the 1024×1024 asset
- Or import the entire `ios-icons/` folder into your Asset Catalog

### Android
- Place `sizes/192.png` (will generate) in `android/app/src/main/res/mipmap-mdpi/`
- Use adaptive icons: foreground = our icon, background = `android-adaptive-bg.svg`
- See Android documentation for full mipmap folder structure

### Web
- Use `weatherwise-icon.svg` as favicon (with fallback PNG)
- Embed inline for instant loading
- SVG scales to any display density

### Other
- `sizes/` folder contains PNGs for any platform needing specific dimensions
- Windows tile: use 512×512 or 1024×1024
- macOS dock: use 512×512 with @2x version

## 🎯 Design Rationale

**Symbolism**: Sun + Cloud = clear weather conditions. The "W" shape is subtly embedded in the negative space between sun and cloud, reinforcing brand identity.

**Recognition**: The sun-cloud combination is intuitive for weather, while the angular composition and gradient make it stand out against typical circular weather icons.

**Legibility**: Strong silhouette with high-contrast colors ensures the icon remains clear even at 16×16px (tab bar, notification).

**Emotion**: Warm golden sun suggests optimism; deep blue gradient conveys trust and reliability. The animated sparkles add a touch of magic and energy.

## 🛠️ Customization

Edit `weatherwise-icon.svg` in any vector editor (Figma, Illustrator, Sketch):
- Colors use CSS variables in gradients (easy theaming)
- Rays can be toggled on/off
- Cloud puffs are separate groups for modification
- Corner radius is set on the background rect element

## 📐 Sizing Guidelines

| Platform | Required Sizes |
|----------|---------------|
| App Store (iOS) | 1024×1024 (no rounded corners) |
| Google Play | 512×512 (512dp) |
| Android adaptive | 108×108 dp (foreground) + 108×108 dp (background) |
| Favicon | 16×16, 32×32, 48×48 |
| Web app / PWA | 192×192, 512×512 |

## 📤 Export Notes

**Do**:
- Use the provided PNGs directly for quick integration
- Use SVG when possible for infinite scalability
- Keep the 22% corner radius for platform consistency

**Don't**:
- Crop or resize arbitrarily
- Change the color palette (it's part of the brand)
- Remove the glow/sparkle effects (they're intentional)

---

**Daily UI Challenge**: #005 — App Icon  
**Created**: April 22, 2026  
**Tool**: Designed with code (SVG), exported with ImageMagick

Share on Dribbble/Twitter with **#DailyUI** hashtag!