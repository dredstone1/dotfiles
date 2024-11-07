# Dotfiles
This repository contains my personal configuration files (dotfiles) for various applications and tools. These dotfiles help to set up a consistent development environment across different machines.

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

---
