# Dotfiles

This repository contains my personal configuration files (dotfiles) for various applications and tools. These dotfiles help to set up a consistent development environment across different machines.

## Hyprland Keybindings

This setup uses **Hyprland** as the Wayland compositor.  
The main modifier key is **SUPER** (Windows key).

### Applications

| Shortcut  | Action                           |
| --------- | -------------------------------- |
| SUPER + Q | Open terminal (`kitty`)          |
| SUPER + E | Open file manager (`dolphin`)    |
| SUPER + R | Open app launcher (`wofi`)       |
| SUPER + Z | Open web browser (`zen-browser`) |
| SUPER + A | Open clipboard manager (`copyq`) |


### Window Management

| Shortcut  | Action              |
| --------- | ------------------- |
| SUPER + C | Close active window |
| SUPER + V | Toggle floating     |
| SUPER + P | Toggle pseudo mode  |
| SUPER + J | Toggle split layout |


### Focus Navigation

**Arrow keys**
| Shortcut | Action |
|--------|--------|
| SUPER + CTRL + ← → ↑ ↓ | Move focus |

**Vim keys**
| Shortcut | Action |
|--------|--------|
| SUPER + CTRL + H / L / K / J | Move focus |


### Move Windows

**Arrow keys**
| Shortcut | Action |
|--------|--------|
| SUPER + SHIFT + ← → ↑ ↓ | Move window |

**Vim keys**
| Shortcut | Action |
|--------|--------|
| SUPER + SHIFT + H / L / K / J | Move window |


### Resize Windows

**Vim keys**
| Shortcut | Action |
|--------|--------|
| SUPER + ALT + H / L | Resize horizontally |
| SUPER + ALT + K / J | Resize vertically |

**Arrow keys**
| Shortcut | Action |
|--------|--------|
| SUPER + ALT + ← → ↑ ↓ | Resize window |


### Workspaces

| Shortcut            | Action                      |
| ------------------- | --------------------------- |
| SUPER + 1–9         | Switch to workspace         |
| SUPER + 0           | Switch to workspace 10      |
| SUPER + SHIFT + 1–9 | Move window to workspace    |
| SUPER + SHIFT + 0   | Move window to workspace 10 |

**Special Workspace (Scratchpad)**
| Shortcut | Action |
|--------|--------|
| SUPER + S | Toggle scratchpad |
| SUPER + SHIFT + S | Move window to scratchpad |


### Mouse Bindings

| Shortcut            | Action        |
| ------------------- | ------------- |
| SUPER + Left Click  | Move window   |
| SUPER + Right Click | Resize window |


### Media & Volume Controls

**Volume**
| Key | Action |
|----|-------|
| Volume Up | Increase volume |
| Volume Down | Decrease volume |
| Mute | Toggle mute |

**Media Keys**
| Key | Action |
|----|-------|
| Play / Pause | Toggle playback |
| Next | Next track |
| Previous | Previous track |

**Keyboard Media Shortcuts**
| Shortcut | Action |
|--------|--------|
| SUPER + U | Play / Pause |
| SUPER + I | Previous track |
| SUPER + O | Next track |
| SUPER + Y | Media popup |
| SUPER + SHIFT + U | Seek −30s |
| SUPER + SHIFT + I | Seek −10s |
| SUPER + SHIFT + O | Seek +30s |


### System Shortcuts

| Shortcut  | Action                 |
| --------- | ---------------------- |
| SUPER + T | Show time notification |
| SUPER + B | Show battery status    |


## Installation

To install the dotfiles, you can use GNU Stow. This will create symlinks in your home directory pointing to the files in this repository.

### Prerequisites

Make sure you have GNU Stow installed. You can install it using your package manager. For example, on a Debian-based system, you can use:

```sh
# Install GNU Stow
sudo apt-get install stow

# Clone the dotfiles repository
git clone https://github.com/dredstone1/.dotfiles.git ~/dotfiles

# Change to the dotfiles directory
cd ~/dotfiles

# Use Stow to link the dotfiles to the home directory
stow -t ~ */
```

This command will create symlinks for all the directories in the repository to your home directory.

## Contributing

if you have any improvements or suggestions, feel free to open an issue or submit a pull request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
