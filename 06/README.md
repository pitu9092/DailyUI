# Glassmorphism Profile Card

This is a modern user profile card UI implemented with glassmorphism style.

## Features

- Frosted glass card with blurred background
- Soft gradient colors (purple to blue)
- Circular avatar overlapping the top section with glowing animated border
- User name, username, short bio
- Action buttons: Follow and Message
- Stats: Posts, Followers, Following
- Skill tags: UI Design, React, UX
- "Available for Work" badge
- Minimal, elegant spacing
- Premium SaaS-style look
- Responsive design

## Technologies Used

- HTML5
- CSS3 (with CSS variables, flexbox, grid)
- CSS Glassmorphism effects (backdrop-filter, background blur)
- CSS Gradients
- CSS Animations (for the glowing border)

## Implementation Details

### Glassmorphism Effect
The profile container uses:
```css
background: rgba(255, 255, 255, 0.15);
backdrop-filter: blur(10px);
-webkit-backdrop-filter: blur(10px);
border-radius: 20px;
box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
border: 1px solid rgba(255, 255, 255, 0.18);
```

### Avatar with Glowing Border
The avatar features a pulsating gradient border using CSS animations:
```css
.avatar::after {
  content: '';
  position: absolute;
  top: -8px;
  left: -8px;
  right: -8px;
  bottom: -8px;
  border-radius: 50%;
  background: linear-gradient(45deg, #ff9a9e, #fad0c4, #fbc2eb, #a6c1ee);
  animation: borderGlow 3s ease infinite;
  z-index: -1;
}

@keyframes borderGlow {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}
```

### Responsive Design
The layout adapts for mobile screens using flexbox direction changes and adjusted spacing.

## Files

- `index.html` - HTML structure
- `style.css` - All styling including glassmorphism effects, gradients, and animations

## Browser Support

This design uses modern CSS features and works best in:
- Chrome 76+
- Firefox 69+
- Safari 12.1+
- Edge 79+

For older browsers, the design gracefully degrades to a solid color background while maintaining usability.