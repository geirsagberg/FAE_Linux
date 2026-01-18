# FAE_Linux - Factorio Achievement Enabler for Linux

**FAE_Linux** (Factorio Achievement Enabler for Linux) allows you to unlock Steam achievements while playing the game with mods on Linux and macOS (Apple Silicon).

## Features
- **Unlock Steam Achievements:** Enables achievement tracking with mods.
- **Easy to Use:** Simple command-line interface.
- **Cross-Platform:** Works on Linux and macOS Apple Silicon.

## Usage
### Universal (Linux):
1. **Download:** Get the executable file from the [releases tab](https://github.com/UnlegitSenpaii/FAE_Linux/releases).
2. **Mark the file as executable:** Apply the executable flag to the downloaded file.
   ```sh
   chmod +x ./Downloads/FAE_Linux
   ```
3. **Run:** Execute it with the Factorio path as a parameter.
   ```sh
   ./Downloads/FAE_Linux /path/to/Factorio/bin/x64/factorio
   ```
*Note: If running the executable does not work, you will have to build the project from source.* 

### macOS (Apple Silicon):
1. **Build from source** (see Building from Source section below).
2. **Run:** Execute it with the Factorio path as a parameter.
   ```sh
   ./out/bin/FAE_Linux /path/to/Factorio.app/Contents/MacOS/factorio
   ```
   Or if you installed via Steam:
   ```sh
   ./out/bin/FAE_Linux ~/Library/Application\ Support/Steam/steamapps/common/Factorio/factorio.app/Contents/MacOS/factorio
   ```
*Note: On macOS, you may need to allow the app to run in System Preferences > Security & Privacy if you get a security warning.*

### Steam Deck:
1. **Download:** Get the executable file from the [releases tab](https://github.com/UnlegitSenpaii/FAE_Linux/releases).
2. **Open the Terminal:** Search and Open the "Konsole" Application.
3. **Mark the file as executable:** Apply the executable flag to the downloaded file.
   ```sh
   chmod +x ./Downloads/FAE_Linux
   ```
4. **Run:** Execute it with the Factorio path as a parameter.
   ```sh
   ./Downloads/FAE_Linux  /home/deck/.local/share/Steam/steamapps/common/Factorio/bin/x64/factorio
   ```
*Note: This assumes you installed the game on your local drive and not on an SD Card* 


### NixOS (not officially supported):
If you're on NixOS or have Nix installed with Flakes enabled (works on Linux and macOS Apple Silicon), you can instead use
```sh
nix run github:UnlegitSenpaii/FAE_Linux /path/to/Factorio/bin/x64/factorio
```
On macOS Apple Silicon:
```sh
nix run github:UnlegitSenpaii/FAE_Linux /path/to/Factorio.app/Contents/MacOS/factorio
```

## Building from Source
Follow these steps to build the binary yourself:
1. Clone the repository:
    ```sh
    git clone https://github.com/UnlegitSenpaii/FAE_Linux.git
    ```
2. Compile the project:
    ```sh
    cmake FAE_Linux/CMakeLists.txt
    make
    ```
3. The compiled binary can be found in the /out folder.

### macOS-Specific Build Instructions
On macOS, the CMake configuration will automatically build for Apple Silicon (arm64). You'll need:
- Xcode Command Line Tools: `xcode-select --install`
- CMake: Install via Homebrew (`brew install cmake`) or download from cmake.org
- An Apple Silicon Mac (M1, M2, M3, etc.)

## Contribution Guidelines

- **Major cosmetic changes** will not be accepted and will be **rejected**.
- Small, meaningful changes such as **pattern updates** or minor functionality improvements are **welcome**.
- Pull requests that introduce **large, sweeping changes** that are difficult to review will be rejected **without comment**, due to **security and maintainability concerns**.
Ensure your contributions are focused and easy to review.

## Additional Information
- [**Wiki**](https://github.com/UnlegitSenpaii/FAE_Linux/wiki): Find detailed guides and documentation.
- **Release Notes**: Check the latest release note information about the supported versions and other test results.

[![CodeQL](https://github.com/UnlegitSenpaii/FAE_Linux/actions/workflows/codeql.yml/badge.svg)](https://github.com/UnlegitSenpaii/FAE_Linux/actions/workflows/codeql.yml)
[![C/C++ CI](https://github.com/UnlegitSenpaii/FAE_Linux/actions/workflows/c-cpp.yml/badge.svg)](https://github.com/UnlegitSenpaii/FAE_Linux/actions/workflows/c-cpp.yml)


## Credits
[oorzkws FAE for Windows (for the Patterns :) )](https://github.com/oorzkws/FactorioAchievementEnabler)<br>
[contributors](https://github.com/UnlegitSenpaii/FAE_Linux/graphs/contributors)<br>

## Tools Used
[VSCode](https://code.visualstudio.com/)<br>
[Ghidra](https://github.com/NationalSecurityAgency/ghidra)<br>
