﻿#
# dotfiles内で実行 New-Item -Type 存在しないパス  -Value 存在するパス
#
New-Item -Type SYmbolicLink "~/AppData/Local/nvim/init.lua" -Value "~/OneDrive/dotfiles/init.lua" -Force
New-Item -Type SYmbolicLink "~/AppData/Local/nvim/coc-settings.json" -Value "~/OneDrive/dotfiles/coc-settings.json" -Force
New-Item -Type SYmbolicLink "C:/Users/h4reh\OneDrive/ドキュメント/WindowsPowerShell/Microsoft.PowerShell_profile.ps1" -Value "~/OneDrive/dotfiles/Microsoft.PowerShell_profile.ps1" -Force

