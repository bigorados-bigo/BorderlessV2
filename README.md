# Borderlessv2 - AutoHotkey Scripts

[![GitHub license](https://img.shields.io/github/license/yourusername/borderlessv2)](https://github.com/yourusername/borderlessv2/blob/main/LICENSE)
[![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v1.1+-blue.svg)](https://www.autohotkey.com/)
[![Windows](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)](https://www.microsoft.com/windows/)

A collection of AutoHotkey scripts to make games run in borderless windowed mode for a better gaming experience.

## 🎮 Features

- **Universal Borderless Toggle**: Works with most games and applications
- **Easy Hotkeys**: Simple keyboard shortcuts for quick access
- **Lightweight**: Minimal system resource usage
- **Customizable**: Easy to modify for specific games
- **Instant Toggle**: Switch between borderless and windowed mode on the fly

## 📁 Repository Structure

```
borderlessv2/
├── scripts/           # AutoHotkey script files
├── docs/             # Documentation and guides
├── assets/           # Images and icons
├── examples/         # Usage examples
└── README.md         # This file
```

## 🚀 Quick Start

### Prerequisites

- Windows OS (7, 8, 10, or 11)
- [AutoHotkey v1.1+](https://www.autohotkey.com/download/) installed

### Installation

1. **Clone or download this repository**
   ```bash
   git clone https://github.com/yourusername/borderlessv2.git
   ```

2. **Navigate to the scripts folder**
   ```bash
   cd borderlessv2/scripts
   ```

3. **Run the main script**
   - Double-click `Borderlessv2-General.ahk`
   - Or right-click and select "Compile Script" to create an executable

## 🎯 Usage

### Main Script: Borderlessv2-General.ahk

#### Hotkeys
- **Ctrl+Alt+B** - Toggle borderless mode for the active window
- **Ctrl+Alt+H** - Show help dialog
- **Ctrl+Alt+X** - Exit the script

#### Basic Usage
1. Run the script
2. Launch your game
3. When the game is active, press `Ctrl+Alt+B`
4. The game will switch to borderless windowed mode
5. Press `Ctrl+Alt+B` again to restore window borders

### Advanced Usage

For game-specific configurations, you can:
1. Copy the main script
2. Uncomment and modify the game-specific sections
3. Add your game's window title
4. Customize hotkeys as needed

## 📋 Supported Games

The universal script works with most games, but some may require specific configurations:

- ✅ **Universal Support**: Most DirectX and OpenGL games
- ✅ **Steam Games**: Most Steam library games
- ✅ **Origin/EA Games**: Most EA platform games
- ✅ **Epic Games**: Most Epic Games Store titles
- ⚠️ **Some Exclusions**: Full-screen exclusive games may need specific handling

## 🛠️ Customization

### Creating Game-Specific Scripts

1. Copy `Borderlessv2-General.ahk`
2. Rename it (e.g., `Borderlessv2-YourGame.ahk`)
3. Modify the window detection for your specific game:

```autohotkey
; Example for a specific game
#IfWinActive, Your Game Title
F11::MakeGameBorderless("Your Game Title")
#IfWinActive
```

### Custom Hotkeys

Modify the hotkey definitions at the top of the script:

```autohotkey
; Change Ctrl+Alt+B to F11
BorderlessHotkey := "F11"
```

## 🔧 Troubleshooting

### Common Issues

**Script doesn't work with my game:**
- Try running the script as Administrator
- Check if the game uses exclusive fullscreen mode
- Verify the correct window title in Task Manager

**Hotkeys not working:**
- Make sure no other application is using the same hotkeys
- Try different hotkey combinations
- Check if the script is running (look for the AutoHotkey icon in system tray)

**Game crashes or behaves oddly:**
- Some anti-cheat systems may interfere with AutoHotkey
- Try using the script before launching the game
- Create a game-specific profile with different settings

### Getting Help

1. Check the [Documentation](docs/) folder
2. Look at [Examples](examples/) for reference implementations
3. Create an issue on GitHub with:
   - Game name and version
   - Windows version
   - AutoHotkey version
   - Exact error message or behavior

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Commit your changes**
   ```bash
   git commit -m 'Add some amazing feature'
   ```
4. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
5. **Open a Pull Request**

### Contribution Guidelines

- Test scripts thoroughly before submitting
- Include clear documentation for new features
- Follow existing code style and formatting
- Add examples for new functionality

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- AutoHotkey community for the excellent scripting language
- Gaming community for feedback and feature requests
- Contributors who help improve the scripts

## 📊 Changelog

### Version 2.0 (Current)
- Universal borderless toggle function
- Improved game compatibility
- Better error handling
- Enhanced documentation

### Version 1.0
- Basic borderless functionality
- Game-specific scripts
- Simple hotkey system

---

**Made with ❤️ for the gaming community**

*Happy Gaming! 🎮*