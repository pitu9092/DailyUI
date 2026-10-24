# DailyUI 001: Volunteer Event Sign-Up

## Project Overview
- **Type**: Single-page sign-up form
- **Core functionality**: Registration modal for a community cleanup volunteer event
- **Target users**: Community members wanting to volunteer

## UI/UX Specification

### Layout Structure
- Full-screen hero with centered modal
- Modal: 480px max-width, centered vertically and horizontally
- Responsive: Stack gracefully on mobile (<600px)

### Visual Design

**Color Palette**
- Background: `#0f0f0f` (deep black)
- Modal bg: `#1a1a1a` (dark charcoal)
- Primary accent: `#00d4aa` (mint teal)
- Secondary: `#ff6b6b` (coral red)
- Text primary: `#ffffff`
- Text muted: `#888888`
- Input bg: `#252525`
- Input border: `#333333`

**Typography**
- Headings: "Clash Display", sans-serif (Google Fonts)
- Body: "DM Sans", sans-serif (Google Fonts)
- Hero title: 48px, bold
- Modal title: 28px, semibold
- Body text: 16px
- Labels: 14px, medium

**Spacing**
- Modal padding: 40px
- Form field gap: 20px
- Button padding: 16px 32px

### Components

**Background**
- Animated gradient mesh with subtle movement
- Floating geometric shapes (circles, triangles) with blur

**Modal**
- Rounded corners (24px)
- Subtle glow effect using box-shadow with accent color
- Close button (X) top-right

**Form Fields**
- Full-width inputs with floating labels
- Border glow on focus (accent color)
- Fields: Name, Email, Phone, Interests (multi-select chips), Experience level (dropdown)

**Submit Button**
- Full-width, accent color background
- Hover: slight scale + glow
- Loading state with spinner

**Success State**
- Animated checkmark
- "You're In!" message
- Confetti animation

### Animations
- Modal: fade in + scale from 0.9 to 1 (0.4s ease-out)
- Form fields: stagger in (0.1s delay each)
- Button hover: 0.2s scale(1.02)
- Success: checkmark draw animation + confetti burst

## Functionality Specification

1. Form validation (required fields, email format)
2. Multi-select interest chips (toggleable)
3. Dropdown for experience level
4. Submit shows loading state, then success animation
5. Close modal functionality
6. Keyboard accessible (tab navigation, enter to submit)

## Acceptance Criteria
- [ ] Modal opens centered on page
- [ ] All form fields render with floating labels
- [ ] Interest chips are toggleable
- [ ] Validation shows error states
- [ ] Submit triggers loading then success
- [ ] Responsive on mobile
- [ ] Animations are smooth