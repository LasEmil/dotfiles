vim.cmd 'colorscheme onedark'
vim.cmd 'syntax enable'
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
vim.cmd 'autocmd WinEnter * setlocal cursorline'
vim.cmd 'autocmd WinLeave * setlocal nocursorline'
vim.cmd 'highlight CursorLine guibg=#2d323c ctermbg=234'
vim.cmd 'hi cursorline cterm=none term=none'
vim.cmd "let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g \"!{.git,node_modules,vendor}/*\"'"
vim.cmd 'let $FZF_DEFAULT_OPTS="--ansi --preview-window \'right:50%\'  --margin=1,4 --preview \'bat --color=always --style=header,grid --line-range :300 {}\'"'
vim.cmd "command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob \"!.git/*\" --color \"always\" '.shellescape(<q-args>).'| tr -d \"017\"', 1, <bang>0)"

