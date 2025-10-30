# Installation Guide

## Prerequisites

Before using Borderlessv2 scripts, ensure you have:

1. **Windows Operating System** (7, 8, 10, or 11)
2. **AutoHotkey v1.1 or later** installed

## Installing AutoHotkey

### Method 1: Download from Official Website

1. Visit [AutoHotkey.com](https://www.autohotkey.com/download/)
2. Download the latest stable version
3. Run the installer and follow the setup wizard
4. Choose "Express Installation" for default settings

### Method 2: Using Package Managers

#### Chocolatey
```powershell
choco install autohotkey
```

#### Scoop
```powershell
scoop install autohotkey
```

## Installing Borderlessv2

### Option 1: Direct Download

1. Download the latest release from the [Releases page](https://github.com/yourusername/borderlessv2/releases)
2. Extract the ZIP file to your desired location
3. Navigate to the `scripts` folder
4. Double-click `Borderlessv2-General.ahk` to run

### Option 2: Git Clone

```bash
git clone https://github.com/yourusername/borderlessv2.git
cd borderlessv2/scripts
```

## First Time Setup

1. **Run the main script**
   - Double-click `Borderlessv2-General.ahk`
   - You should see the AutoHotkey icon appear in your system tray

2. **Test the functionality**
   - Open any window (like Notepad)
   - Press `Ctrl+Alt+B` to toggle borderless mode
   - Press `Ctrl+Alt+H` to see the help dialog

3. **Configure for your games**
   - Launch your favorite game
   - Press `Ctrl+Alt+B` when the game is active
   - The game should switch to borderless windowed mode

## Creating Desktop Shortcuts

To easily access your scripts:

1. Right-click on `Borderlessv2-General.ahk`
2. Select "Send to" → "Desktop (create shortcut)"
3. Rename the shortcut to "Borderlessv2"
4. (Optional) Change the icon to something game-related

## Auto-Start with Windows

To automatically run the script when Windows starts:

1. Press `Win+R` to open Run dialog
2. Type `shell:startup` and press Enter
3. Copy `Borderlessv2-General.ahk` to this folder
4. The script will now start automatically with Windows

## Compiling Scripts to Executables

For easier distribution or if you don't want to install AutoHotkey on every machine:

1. Right-click on the `.ahk` script file
2. Select "Compile Script" (if AutoHotkey is installed)
3. This creates a `.exe` file that doesn't require AutoHotkey to be installed
4. Share the `.exe` file with others

## Troubleshooting Installation

### Common Issues

**AutoHotkey not recognized:**
- Make sure AutoHotkey is properly installed
- Try restarting your computer after installation
- Check if AutoHotkey appears in your Programs list

**Script won't run:**
- Right-click the script and select "Run Script"
- Try running as Administrator
- Check if antivirus software is blocking the script

**No system tray icon:**
- Check if the script is actually running in Task Manager
- Look for `AutoHotkey.exe` or your script name in running processes
- Try restarting the script

### Getting Help

If you encounter issues:

1. Check the [Troubleshooting Guide](troubleshooting.md)
2. Review the [FAQ](faq.md)
3. Create an issue on the GitHub repository with details about your problem

## Next Steps

After successful installation:

1. Read the [Usage Guide](usage.md)
2. Check out [Game-Specific Configurations](game-configs.md)
3. Learn about [Customization Options](customization.md)