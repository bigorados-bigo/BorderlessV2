# Usage Guide

## Getting Started

Once you have Borderlessv2 installed and running, here's how to use it effectively.

## Basic Usage

### Default Hotkeys

| Hotkey | Action |
|--------|--------|
| `Ctrl+Alt+B` | Toggle borderless mode for active window |
| `Ctrl+Alt+H` | Show help dialog |
| `Ctrl+Alt+X` | Exit the script |

### Step-by-Step Instructions

1. **Start the Script**
   - Run `Borderlessv2-General.ahk`
   - Look for the AutoHotkey icon in your system tray

2. **Launch Your Game**
   - Start any game or application
   - Wait for it to fully load

3. **Apply Borderless Mode**
   - Make sure the game window is active (click on it)
   - Press `Ctrl+Alt+B`
   - The window should become borderless and maximize

4. **Restore Borders (Optional)**
   - Press `Ctrl+Alt+B` again to restore window borders
   - The window will return to its original state

## Advanced Features

### Window Detection

The script automatically detects the currently active window. It works with:

- **Games**: DirectX, OpenGL, Vulkan applications
- **Applications**: Most Windows programs
- **Browsers**: Chrome, Firefox, Edge (for web games)

### Style Detection

The script intelligently detects window styles:

- **Bordered Windows**: Will remove borders and maximize
- **Borderless Windows**: Will restore borders and window controls
- **Fullscreen Applications**: May require specific handling

## Best Practices

### For Gaming

1. **Launch Order**
   - Start Borderlessv2 first
   - Then launch your game
   - Apply borderless mode after the game fully loads

2. **Timing**
   - Wait for games to finish loading before applying
   - Some games need to be in windowed mode first
   - Apply during main menu or after intro sequences

3. **Game Settings**
   - Set games to "Windowed" or "Windowed Fullscreen" in their settings
   - This often provides better compatibility
   - Some games have built-in borderless options

## Game-Specific Tips

### Steam Games

1. Launch Steam
2. Right-click your game → Properties
3. In Launch Options, you might add: `-windowed -noborder`
4. Use Borderlessv2 as backup or for games without built-in support

### Epic Games Store

1. Most Epic games work well with the universal script
2. Apply borderless mode after the Epic Games launcher closes
3. Some games may need administrator privileges

### Origin/EA Games

1. Origin games often benefit from borderless mode
2. Apply after the Origin overlay loads
3. Some EA games have built-in borderless options in graphics settings

### Older Games

1. Legacy games often lack borderless support
2. Borderlessv2 is particularly useful for these
3. May need to run script as Administrator for older games

## Troubleshooting Common Issues

### Script Not Working

**Check if script is running:**
- Look for AutoHotkey icon in system tray
- Check Task Manager for `AutoHotkey.exe`

**Hotkeys not responding:**
- Make sure no other application is using the same hotkeys
- Try different hotkey combinations
- Restart the script

### Game-Specific Issues

**Anti-cheat software:**
- Some games block AutoHotkey scripts
- Try using before launching the game
- Check game-specific forums for compatibility

**Fullscreen exclusive mode:**
- Some games force exclusive fullscreen
- Change game settings to windowed mode first
- Use game's built-in borderless option if available

**Window doesn't maximize properly:**
- Try pressing `Ctrl+Alt+B` twice
- Manually resize the window after applying
- Check if the game has aspect ratio locks

## Tips for Better Experience

1. **Use with Game Libraries**
   - Works well with Steam, Epic, Origin, GOG
   - Can be applied to launcher windows too
   - Useful for game streaming applications

2. **Combine with Other Tools**
   - Window management software
   - Multi-monitor utilities
   - Gaming overlays (Discord, Steam, etc.)

3. **Create Profiles**
   - Different scripts for different games
   - Customize hotkeys per game
   - Save configurations for easy switching

## Getting Help

If you need assistance:

1. Check the hotkey help: Press `Ctrl+Alt+H`
2. Review the [FAQ](faq.md)
3. Read the [Troubleshooting Guide](troubleshooting.md)
4. Create an issue on GitHub with specific details