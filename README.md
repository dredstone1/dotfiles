# Dotfiles
This repository contains my personal configuration files (dotfiles) for various applications and tools. These dotfiles help to set up a consistent development environment across different machines.

## Installation

To install the dotfiles, you can use GNU Stow. This will create symlinks in your home directory pointing to the files in this repository.

### Prerequisites

Make sure you have GNU Stow installed. You can install it using your package manager. For example, on a Debian-based system, you can use:

```sh
sudo apt-get install stow
git clone https://github.com/dredstone1/.dotfiles.git ~/dotfiles
stow --target ~ */
```

This command will create symlinks for all the directories in the repository to your home directory.

## Structure

The repository is organized into directories, each containing the configuration files for a specific application or tool. For example:

- `bash/` - Bash configuration files
- `vim/` - Vim configuration files
- `git/` - Git configuration files

## Customization

Feel free to customize the dotfiles to suit your needs. You can modify the files directly in this repository and then re-run the install command to update the symlinks.

## Contributing

If you have any improvements or suggestions, feel free to open an issue or submit a pull request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---
