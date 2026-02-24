Uninstall existing nvim
```
  #Linux (unix)
  rm -rf ~/.config/nvim
  rm -rf ~/.local/state/nvim
  rm -rf ~/.local/share/nvim

  #Windows (Powershell)
  rm -Force ~\AppData\Local\nvim
  rm -Force ~\AppData\Local\nvim-data

  #Windows (CMD)
  rd -r ~\AppData\Local\nvim
  rd -r ~\AppData\Local\nvim-data
```

Clone 
```
  git clone https://github.com/yuristian/nvim ~/.config/nvim && nvim
```

this configuration is using
1. ToggleTerm
2. LazyGit
3. Nvim-autopairs
4. Noice
