#
# dotfiles内で実行 New-Item -Type 存在しないパス  -Value 存在するパス
#
New-Item -Type SYmbolicLink "~/AppData/Local/nvim/init.lua" -Value "~/Documents/code/dotfiles/init.lua"
New-Item -Type SYmbolicLink "~/AppData/Local/nvim/coc-settings.json" -Value "~/Documents/code/dotfiles/coc-settings.json"
