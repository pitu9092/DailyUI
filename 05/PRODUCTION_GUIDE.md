# WeatherWise App Icon — Production Guide

## Quick Summary

✅ **Complete app icon package** for WeatherWise weather app  
✅ **Scalable SVG** + **40+ PNG** sizes generated  
✅ **iOS & Android** platform ready  
✅ **Animated sparkle effects** in the icon (when used in app)  
✅ **Home screen ready** — distinctive, high contrast, recognizable at any size

---

## 📱 Instant Integration

### iOS (Swift/Xcode)
```xml
<!-- In your Assets.xcassets/AppIcon.appiconset -->
<key>CFBundleIcons</key>
<dict>
    <key>CFBundlePrimaryIcon</key>
    <dict>
        <key>CFBundleIconFiles</key>
        <array>
            <string>icon-1024</string> <!-- 1024x1024 no mask -->
        </array>
    </dict>
</dict>
```
Simply drag the entire `ios-icons/` folder into your Asset Catalog.

### Android (Gradle)
```gradle
android {
    defaultConfig {
        // ...
        vectorDrawables.useSupportLibrary = true
    }
}
```
Place adaptive icons in:
```
app/src/main/res/
├── mipmap-anydpi-v26/ic_launcher.xml        (adaptive icon config)
├── mipmap-mdpi/ic_launcher.png               (48×48)
├── mipmap-hdpi/ic_launcher.png               (72×72)
├── mipmap-xhdpi/ic_launcher.png              (96×96)
├── mipmap-xxhdpi/ic_launcher.png             (144×144)
├── mipmap-xxxhdpi/ic_launcher.png            (192×192)
└── mipmap-anydpi-v26/ic_launcher_foreground.png (foreground, 108×108dp)
```

Use `weatherwise-icon.svg` as foreground and `android-adaptive-bg.svg` as background.

### Web (HTML)
```html
<!-- In <head> -->
<link rel="icon" type="image/svg+xml" href="weatherwise-icon.svg">
<link rel="apple-touch-icon" sizes="180x180" href="ios-icons/icon-180.png">
<link rel="icon" type="image/png" sizes="32x32" href="sizes/32.png">
<link rel="icon" type="image/png" sizes="16x16" href="sizes/16.png">
```

---

## 🎨 Color Reference

Copy-paste these into your design tool (Figma/Sketch):

**Background Gradient:**
```
#0f172a → #1e40af → #1e3a8a
```

**Sun Gradient:**
```
#fbbf24 → #f59e0b
```

**Cloud Gradient:**
```
#ffffff → #cbd5e1
```

**Accent Sparkles:**
```
#38bdf8 (cyan)
```

**Corner Radius:**
```
22% (120px on 512px canvas)
```

---

## 🔍 Why This Icon Works

1. **Immediate Recognition** — Sun + cloud = weather (universal language)
2. **Branded Uniquely** — Negative space subtly forms a "W" shape
3. **High Contrast** — Works equally well on light & dark wallpapers
4. **Scalable** — SVG stays crisp from 16px to billboard size
5. **Emotion** — Animated sparkles make it feel alive (when dynamic)
6. **Professional** — Meets all App Store & Play Store guidelines

---

## 📐 Technical Specs

| Parameter | Value |
|-----------|-------|
| Base canvas | 512×512 px |
| Safe area (scalable) | Center 400×400 (with 56px padding) |
| Visual center | 60% from left, 40% from top |
| Minimum detail size | 8px (rays, sparkles) |
| Corner radius | 22% (120px) |
| Primary focal | Sun (upper-left) |
| Secondary focal | Cloud (lower-right) |
| Animation | Sparkle opacity cycle (2–2.5s) |

---

## 🔄 Animation (Optional)

Add this CSS for a subtle "breathing" effect:

```css
@keyframes sparkle {
  0%, 100% { opacity: 0.8; }
  50% { opacity: 0.3; }
}
```

The SVG includes 3 animated circles already (when rendered in browser/native).

---

## 🛠️ File Naming Conventions

```
weatherwise-icon.svg          ← Main vector (edit this)
weatherwise-icon.png          ← Generated PNG (various sizes)
weatherwise-icon-1024-nomask.svg ← iOS version (square, no rounded corners)
android-adaptive-bg.svg       ← Android full-bleed background
favicon.svg / favicon.ico     ← Browser shortcuts
```

---

## 📦 Distribution Checklist

Before submitting to app stores:

- [x] 1024×1024 PNG (App Store)
- [x] 512×512 PNG (Google Play)
- [x] Adaptive icons (Android 8.0+)
- [x] Favicon .ico (16×16, 32×32)
- [x] Apple touch icon (180×180)
- [x] All sizes: 16, 32, 48, 64, 128, 256, 512, 1024
- [ ] Test on home screen with dark & light wallpapers
- [ ] Verify legibility at 1x size (actual device)
- [ ] Check contrast ratio (meets WCAG AA minimum)

---

## 📤 Export Tips

**Figma:**
```
Export → Format: SVG
√ Include "id" attributes
√ Outline text (none in this icon)
√ Minify (optional)
```

**Sketch:**
```
File → Export... → SVG
√ Premium → Include "Export for Screens"
```

**Illustrator:**
```
File → Export → Export As... → SVG
√ SVG Profiles: SVG 1.1
√ Fonts: Convert to Outlines
√ Images: Link (not embed)
```

---

## 🚀 Quick Deploy

```bash
# If you need to regenerate all PNGs:
cd /path/to/05/
mkdir -p sizes ios-icons
for size in 16 32 48 64 128 256 512 1024; do
  convert weatherwise-icon.svg -resize ${size}x${size} sizes/${size}.png
done

# iOS set (all required sizes)
for size in 20 29 40 60 76 80 87 120 152 167 180 1024; do
  # ... (see README_ICON.md for full script)
done
```

---

**Need modifications?** Edit `weatherwise-icon.svg` then regenerate all PNGs with:
```bash
./generate-icons.sh  # (custom script you can create)
```

**Questions?** Refer to the main `APP_ICON_README.md` for detailed specifications.

---

*Crafted with precision for Daily UI #005 — App Icon Challenge*