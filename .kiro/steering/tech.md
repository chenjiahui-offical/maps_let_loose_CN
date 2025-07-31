# Technology Stack

## Framework & Hosting
- **Jekyll** - Static site generator for GitHub Pages
- **GitHub Pages** - Hosting platform (deploys from `master` branch)
- **Ruby** - Required for Jekyll development environment

## Frontend Technologies
- **HTML5 Canvas** - Primary rendering surface for interactive maps
- **Fabric.js** - Canvas manipulation library for interactive elements
- **jQuery** - DOM manipulation and UI interactions
- **jQuery UI** - UI components and interactions
- **Bootstrap** - CSS framework for responsive design
- **WebSockets** - Real-time collaboration via Socket.IO

## Key Libraries
- `fabric.min.js` - Canvas object manipulation
- `jquery-ui.min.js` - UI components
- Socket.IO client - Real-time room collaboration

## Development Setup

### Prerequisites
- Ruby (with DevKit on Windows)
- Bundler gem: `gem install jekyll bundler`

### Local Development
```bash
# Clone repository
git clone https://github.com/mattwright324/maps-let-loose.git

# Install dependencies
bundle install

# Start development server
bundle exec jekyll serve

# Access at http://localhost:4000
```

### Development Workflow
- Jekyll auto-reloads on file changes
- No build step required for development
- Live preview available during development

## Deployment
- Automatic deployment via GitHub Pages
- Production branch: `master`
- Development branch: `develop`
- Pull requests should target `develop` branch

## File Structure
- `index.html` - Main application entry point
- `script.js` - Core application logic and canvas management
- `data.js` - Game data (map coordinates, default elements)
- `styles.css` - Custom styling
- `assets/` - Image assets for map elements and backgrounds