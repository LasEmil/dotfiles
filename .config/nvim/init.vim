call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'justinmk/vim-sneak'
Plug 'dart-lang/dart-vim-plugin'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rakr/vim-one'
Plug 'frazrepo/vim-rainbow'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'psliwka/vim-smoothie'
Plug 'junegunn/vim-slash'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'jparise/vim-graphql'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'sainnhe/edge'
Plug 'joshdick/onedark.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim', {'branch': 'main'}
Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
Plug 'nvim-lua/popup.nvim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'svermeulen/vimpeccable'
call plug#end()
augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
augroup END
colorscheme onedark
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
nnoremap <C-p> :FZF<CR>
nnoremap <C-f> :Rg<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let g:go_fmt_command = "goimports"
set noshowmode 
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
set background=dark
set number
set relativenumber
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
nnoremap <silent> <C-b> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
lua require'colorizer'.setup()
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard=unnamed
let mapleader=" "
hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:50%'  --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
set grepprg=rg\ --vimgrep
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
set foldcolumn=1
set background=dark
set t_Co=256
set timeoutlen=100
set ttimeoutlen=5
set redrawtime=10000

lua require("lsp-config")
lua require("statusline")
lua require("tree")
