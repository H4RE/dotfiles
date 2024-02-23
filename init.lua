if vim.fn.has("win64") then
    vim.opt.shell ="powershell"
    -- vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
    vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
    vim.opt.shellxquote = ''
end

vim.opt.encoding="utf-8" -- バッファ内での文字コード
vim.opt.fileencoding = "utf-8" -- 書き込み時にutf8
-- vim.opt.fileencodings = "utf-8" --読み込み時utf8->shiftjisで自動判別
-- これをつけるとrで文字化けしてしまう。。。
vim.g.python3_host_prog='C:/Python312/python.exe'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true -- tabを見かけ上スペースとして解釈
vim.opt.tabstop = 4      -- tabを見かけ上何spaceで解釈するか
vim.opt.softtabstop = 4  -- 1tab = 4space として挿入
vim.opt.shiftwidth = 4   -- >>/<<で挿入されるspace(tabexpand=falseならtab)の量


-- tags ファイルのパスを設定
vim.o.tags = './tags;'


vim.opt.foldmethod = "syntax"
vim.opt.foldlevel = 1



vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>wh', '<C-w>4<', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>wj', '<C-w>4-', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>wk', '<C-w>4+', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>wl', '<C-w>4>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<leader>b', ':b ', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>n', ':bnext<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>N', ':bprev<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>t', ':vsp | term<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>l', ':CocList<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':NERDTreeToggle<CR>', { noremap = true, silent = true })


local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('neoclide/coc.nvim', {['brance']='release'})
Plug('preservim/nerdtree')
Plug('rebelot/kanagawa.nvim') -- colorscheme
Plug('tpope/vim-commentary')

-- Plug ('iamcco/markdown-preview.nvim')
-- 公式のやり方
-- Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
-- これだとうまくいかなかったので
-- nodejsがインストール済みの状況で、C:\Users\HOGE\AppData\Roaming\npm
-- npmディレクトリがないので作成し
-- C:\Users\h4reh\AppData\Local\nvim-data\plugged\markdown-preview.nvim\app
-- ここでnpx yarn installを実行


Plug('pepo-le/win-ime-con.nvim') 



vim.call('plug#end')

vim.cmd([[colorscheme kanagawa]])
