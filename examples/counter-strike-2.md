# Example: Making Counter-Strike 2 Borderless

This example shows how to create a game-specific script for Counter-Strike 2.

## Game Information
- **Game Title**: "Counter-Strike 2"
- **Window Class**: Usually "Valve001"
- **Common Issues**: May need to be set to windowed mode first

## Usage Steps

1. **Launch CS2**
   - Start Counter-Strike 2 from Steam
   - Go to Settings → Video Settings
   - Set Display Mode to "Windowed"

2. **Run the Script**
   - Execute the main Borderlessv2-General.ahk script
   - Wait for CS2 to fully load

3. **Apply Borderless**
   - Press Ctrl+Alt+B while in-game
   - The game should become borderless windowed

## Pro Tips

- **Performance**: Borderless windowed may have slight input lag compared to exclusive fullscreen
- **Alt+Tab**: Much easier to switch between applications
- **Multi-Monitor**: Can easily move mouse to other screens
- **Streaming**: OBS captures borderless windows more reliably

## Troubleshooting

**Game doesn't go borderless:**
- Make sure CS2 is in windowed mode first
- Try running script as Administrator
- Check if Steam overlay is interfering

**Input lag issues:**
- This is normal for borderless windowed mode
- For competitive play, consider using exclusive fullscreen
- Disable Windows Game Mode if experiencing issues

## Alternative Methods

CS2 also supports launch options in Steam:
1. Right-click CS2 in Steam Library
2. Properties → General → Launch Options
3. Add: `-windowed -noborder`

The AutoHotkey script provides more flexibility and can be toggled on/off during gameplay.