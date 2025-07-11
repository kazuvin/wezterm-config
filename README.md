# WezTerm Configuration

Modern terminal emulator configuration for WezTerm with custom themes, keybindings, and optimized settings.

## Features

- **Theme**: Catppuccin Mocha color scheme
- **Font**: JetBrains Mono Medium
- **Transparency**: Semi-transparent window with gradient background
- **Custom keybindings**: Optimized shortcuts for productivity
- **Tab management**: Clean tab bar with custom styling
- **Auto-reload**: Configuration automatically reloads on changes

## Installation

### Prerequisites

- [WezTerm](https://wezfurlong.org/wezterm/installation.html) installed
- Git

### Setup

1. **Clone this repository**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/wezterm-config.git
   ```

2. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/wezterm ~/.config/wezterm.backup
   ```

3. **Create symlink to the cloned configuration**:
   ```bash
   ln -s /path/to/cloned/wezterm-config ~/.config/wezterm
   ```

   Or copy the files:
   ```bash
   cp -r wezterm-config ~/.config/wezterm
   ```

4. **Install required font**:
   - Download and install [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
   - Or use your system's package manager:
     ```bash
     # macOS with Homebrew
     brew install --cask font-jetbrains-mono
     
     # Ubuntu/Debian
     sudo apt install fonts-jetbrains-mono
     ```

5. **Restart WezTerm** to apply the configuration

## Configuration Structure

```
~/.config/wezterm/
├── wezterm.lua          # Main configuration file
├── config/
│   └── keymaps.lua      # Custom keybindings
└── README.md            # This file
```

## Key Bindings

| Key Combination | Action |
|----------------|--------|
| `Cmd+F` | Search in terminal |
| `Cmd+Shift+F` | Toggle fullscreen |
| `Cmd+T` | New tab |
| `Cmd+W` | Close tab |
| `Cmd+Shift+R` | Reload configuration |
| `Cmd+N` | Next search match |
| `Cmd+P` | Previous search match |
| `Escape` | Close search/copy mode |

## Customization

### Changing the Theme

Edit `wezterm.lua` and change the `color_scheme`:
```lua
config.color_scheme = 'Your-Preferred-Theme'
```

### Font Configuration

Modify the font settings in `wezterm.lua`:
```lua
config.font = wezterm.font('Your-Font-Name', { weight = 'Medium' })
config.font_size = 12.0
```

### Window Opacity

Adjust transparency in `wezterm.lua`:
```lua
config.window_background_opacity = 0.9  -- 0.0 to 1.0
```

## Adding New Keybindings

Add new keybindings to `config/keymaps.lua`:
```lua
{
  key = 'YourKey',
  mods = 'CMD',
  action = wezterm.action.YourAction,
},
```

## Troubleshooting

### Configuration Not Loading

1. Check WezTerm's configuration file location:
   ```bash
   wezterm show-config
   ```

2. Verify file permissions:
   ```bash
   ls -la ~/.config/wezterm/
   ```

### Font Issues

1. Confirm font installation:
   ```bash
   fc-list | grep -i jetbrains
   ```

2. Try alternative fonts in configuration if JetBrains Mono isn't available

### Performance Issues

- Reduce `window_background_opacity` value
- Disable gradient background by commenting out `window_background_gradient`
- Reduce `font_size` if rendering is slow

## License

This configuration is free to use and modify for personal and commercial use.