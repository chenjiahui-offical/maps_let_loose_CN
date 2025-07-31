# Project Structure

## Root Files
- `index.html` - Main application entry point with Jekyll front matter
- `rooms.html` - Collaborative rooms interface
- `script.js` - Core application logic (~4400 lines)
- `data.js` - Game data and map configurations (~4500 lines)
- `styles.css` - Custom CSS styling
- `fabric.min.js` - Fabric.js library for canvas manipulation
- `jquery-ui.min.js` - jQuery UI components

## Configuration Files
- `_config.yml` - Jekyll configuration
- `Gemfile` - Ruby dependencies (github-pages, webrick)
- `BUILD.md` - Development setup instructions
- `CONTRIBUTING.md` - Contribution guidelines
- `README.md` - Project overview and features

## Assets Organization
```
assets/
├── accessibility/     # Accessibility overlays for each map
├── arty/             # Artillery range visualizations per map
├── eggs/             # Easter egg locations per map
├── no-grid/          # Clean map images without grid overlay
├── points/           # Strongpoint visualizations per map
├── special/          # Special location markers per map
└── [element-icons]   # Individual game element icons
```

## Key Code Architecture

### script.js Structure
- **Core Module**: `mll` namespace with utility functions
- **Canvas Management**: Fabric.js integration for interactive elements
- **Room System**: WebSocket-based real-time collaboration
- **Element System**: Drag-and-drop game elements with metadata
- **State Management**: Save/load configurations and room states

### data.js Structure
- **POINT_COORDS**: Strongpoint coordinates for each map (25 sectors, 15 points)
- **SECTOR_COORDS**: Territory boundary definitions
- **ARTY_CLIP/CENTER**: Artillery range calculations
- **DEFAULT_ELEMENTS**: Pre-placed elements per map and faction

## Map Data Convention
- All coordinates based on 1920x1920 pixel maps
- Each map supports 5x5 grid (25 sectors, 15 active strongpoints)
- Coordinates format: `[x, y, width, height]`
- Null values represent unavailable sectors

## Asset Naming Convention
- Map-specific assets: `{MapName}_{AssetType}.{ext}`
- Generic elements: `{element-name}-{variant}.png`
- Accessibility: `{MapName}_Accessible.png`
- Clean maps: `{MapName}_NoGrid.webp`

## Development Patterns
- jQuery for DOM manipulation and event handling
- Fabric.js objects store custom metadata in `.type` property
- Canvas layering with z-index management
- Responsive design with mobile-friendly controls