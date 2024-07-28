-- INTIALISATION
vim.cmd('colorscheme gruvbox')
vim.cmd('filetype plugin indent on')
vim.o.number = true
vim.o.cindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.g.clipboard = {
    name = 'tmux-clipboard',
    copy = {
        ['+'] = 'tmux load-buffer -',
        ['*'] = 'tmux load-buffer -',
    },
    paste = {
        ['+'] = 'tmux save-buffer -',
        ['*'] = 'tmux save-buffer -',
    },
}

vim.cmd('set mouse=')
