local indent = 2
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.background = 'dark'
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.backspace = 'indent,eol,start'
vim.o.tabstop = 4
vim.o.shiftwidth = indent
vim.o.softtabstop = indent
vim.o.expandtab = true
vim.o.clipboard = 'unnamed'
vim.o.grepprg = 'rg --vimgrep'
vim.o.foldcolumn = '1'
vim.o.t_Co = '256'
vim.o.timeoutlen = 1000
vim.o.ttimeoutlen = 5
vim.o.redrawtime = 10000
vim.o.cursorline = true

vim.g.fzf_action = {
  ['ctrl-t'] = 'tab split',
  ['ctrl-s'] = 'split',
  ['ctrl-v'] = 'vsplit'
}
vim.g['prettier#autoformat'] = 1
vim.g['prettier#autoformat_require_pragma'] = 0
vim.g.mapleader = ' '
vim.g.go_fmt_command = 'goimports'
vim.o.mouse = 'a'

