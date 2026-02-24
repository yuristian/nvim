# 📋 Installation Instructions - NvChad Configuration

### Prerequisites

Before installing this Neovim configuration, ensure you have the following installed:

1. **Neovim** (v0.9+)
   - Linux: `sudo apt install neovim` or `brew install neovim`
   - Windows: `choco install neovim` or download from [neovim.io](https://neovim.io)

2. **Git**
   - Required for cloning the configuration

3. **A Nerd Font** (optional but recommended)
   - Download from [Nerd Fonts](https://www.nerdfonts.com/)
   - Install and set as your terminal font

## Step 1: Uninstall Existing Neovim Configuration

Clean up any previous Neovim setup:

**Linux/Unix:**
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

**Windows (PowerShell):**
```powershell
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
```

**Windows (CMD):**
```cmd
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

## Step 2: Clone the Configuration

```bash
git clone https://github.com/yuristian/nvim ~/.config/nvim && nvim
```

This will:
- Clone the repository to your Neovim config directory
- Launch Neovim (plugins will auto-install on first launch)

## Step 3: Verify Installation

When you open Neovim for the first time:
- **Lazy.nvim** (plugin manager) will automatically install all dependencies
- Wait for the installation to complete (check the `:Lazy` status)
- Press `q` to close the Lazy menu

## Required Components & Plugins

This configuration requires the following plugins to function properly:

| Plugin | Purpose | Dependency |
|--------|---------|-----------|
| **ToggleTerm** | Floating terminal integration | Git, Neovim 0.9+ |
| **LazyGit** | Git client within Neovim | LazyGit binary required |
| **Nvim-autopairs** | Auto-closing brackets/quotes | None |
| **Noice** | Better UI for Neovim | None |
| **NvChad** | Base configuration framework | None |

## Step 4: Install External Dependencies

### LazyGit (Required for LazyGit plugin)

**Linux:**
```bash
# Using package manager
sudo apt install lazygit

# Or manually
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz -C /usr/local/bin
```

**macOS:**
```bash
brew install lazygit
```

**Windows (Chocolatey):**
```powershell
choco install lazygit
```

## Quick Start

After installation, use these key bindings:

- **ToggleTerm**: `<Leader>tt` (toggle floating terminal)
- **LazyGit**: `<Leader>lg` (open LazyGit)
- **Lazy Plugin Manager**: `:Lazy` (manage plugins)
- **Mason**: `:Mason` (manage LSP/formatters)

## Troubleshooting

**Plugins not installing?**
- Run `:Lazy` to check status
- Run `:Lazy sync` to install/update plugins

**LazyGit not working?**
- Verify LazyGit is installed: `lazygit --version`
- Check it's in your PATH

**Terminal issues?**
- Ensure you're using a compatible terminal emulator
- Try with a Nerd Font installed

**Performance issues?**
- Check `:checkhealth` for any missing dependencies
- Review plugin loading with `:Lazy profile`