vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true -- tabを見かけ上スペースとして解釈
vim.opt.tabstop = 4      -- tabを見かけ上何spaceで解釈するか
vim.opt.softtabstop = 4  -- 1tab = 4space として挿入
vim.opt.shiftwidth = 4   -- >>/<<で挿入されるspace(tabexpand=falseならtab)の量


-- tags ファイルのパスを設定
vim.o.tags = './tags;'


vim.o.foldmethod = "syntax"
vim.o.foldlevel = 1


if vim.fn.has("win64") then
    vim.opt.shell ="powershell"
end

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
vim.call('plug#end')

vim.cmd([[colorscheme kanagawa]])
