# WeatherWise App Icon Package

## Generated Icons

This directory contains the WeatherWise app icon in various formats and sizes for different platforms.

### Primary Icon
- `weatherwise-icon.svg` — Vector source (512×512)
- `weatherwise-icon.png` — PNG versions in sizes folder

### Sizes Generated
| Size | Path | Use Case |
|------|------|----------|
| 1024×1024 | sizes/1024.png | App Store Connect (iOS) |
| 512×512 | sizes/512.png | Google Play Store |
| 256×256 | sizes/256.png | Windows/macOS |
| 128×128 | sizes/128.png | Favicon, small UI |
| 64×64 | sizes/64.png | Settings, notifications |
| 48×48 | sizes/48.png | Legacy devices |
| 32×32 | sizes/32.png | Toolbar icons |
| 16×16 | sizes/16.png | Favicon |

### Platform-Specific
- **iOS**: Use 1024×1024 for App Store. Xcode will generate all required sizes.
- **Android**: Place icons in `android/app/src/main/res/mipmap-*/ic_launcher.png`
- **Web**: Use SVG for crisp display at any resolution

### Icon Design Specifications

**Dimensions**: 512×512 px (base), 1:1 aspect ratio  
**Corner Radius**: 22% (120px on 512px canvas)  
**Colors**:
- Background: Linear gradient `#0f172a` → `#1e40af` → `#1e3a8a`
- Sun: Gradient `#fbbf24` → `#f59e0b`
- Cloud: Gradient `#ffffff` → `#cbd5e1`
- Accents: `#38bdf8` (cyan sparkles)

**Visual Elements**:
- Stylized sun with 8 rays (upper-left)
- Fluffy cloud cluster (lower-right)
- Floating sparkle dots with subtle animation
- Soft glow effects for depth

**Brand Alignment**:
- Matches WeatherWise app UI (tasks 03+05)
- Recognizable at small sizes
- Distinctive silhouette
- Works on light & dark backgrounds

---

Created for Daily UI Challenge #005  
Designed with ❤️ by WeatherWise Team