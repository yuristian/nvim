# NvChad Config

Custom NvChad v2.5 configuration with LSP, formatters, and UI enhancements.

## Prerequisites

| Tool | Version | Purpose |
|------|---------|---------|
| Neovim | 0.10+ | Main editor |
| Git | Any | Clone & updates |
| Node.js | 18+ | LSP: ts_ls, prettier, tailwindcss |
| Go | 1.21+ | LSP: gopls, formatters: gofumpt, goimports |
| PHP | 8.1+ | LSP: intelephense, formatter: laravel-pint |

## Installation

### Windows

```powershell
# Clone to Neovim config directory
git clone https://github.com/yuristian/nvim.git $env:USERPROFILE\AppData\Local\nvim

# Or if directory already exists:
cd $env:USERPROFILE\AppData\Local\nvim
git pull origin nvchad-new
```

Then restart NVid and plugins will auto-install.

### Linux

```bash
# Clone to XDG config directory
git clone https://github.com/yuristian/nvim.git ~/.config/nvim

# Or if directory already exists:
cd ~/.config/nvim
git pull origin nvchad-new
```

Then restart NVid and plugins will auto-install.

## Mason Install

After first run, install LSP servers and formatters:

```vim
:MasonInstall html css-lsp ts-ls gopls intelephense tailwindcss-language-server stylua gofumpt goimports prettier laravel-pint
```

Or install individually:

```vim
:MasonInstall html
:MasonInstall css-lsp
:MasonInstall ts-ls
:MasonInstall gopls
:MasonInstall intelephense
:MasonInstall tailwindcss-language-server
:MasonInstall stylua
:MasonInstall gofumpt
:MasonInstall goimports
:MasonInstall prettier
:MasonInstall laravel-pint
```

## Keybindings

| Key | Action |
|-----|--------|
| `Space` | Leader key |
| `;` | Enter command mode |
| `jk` (insert mode) | Escape to normal mode |
| `ff` | Find file (Telescope) |
| `fo` | Recent files (Telescope) |
| `fw` | Find word (Telescope live_grep) |
| `th` | Switch themes |
| `ch` | Show cheatsheet |

## Update

```bash
# Pull latest changes
git pull origin nvchad-new

# Restart NVid to sync plugins
nvim
```

## First Run Check

Verify plugins loaded:

```vim
:lua print(require("lazy").stats().count)
```

Expected output: `47` (or higher if plugins added)

## Credits

- [NvChad](https://github.com/NvChad/NvChad) - Base framework
- [LazyVim](https://github.com/LazyVim/starter) - Starter inspiration