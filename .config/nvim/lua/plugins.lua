-- Auto install packer.nvim if not exists
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'jiangmiao/auto-pairs'
  use {
    'junegunn/fzf', run = function() vim.fn['fzf#install']() end
  }
  use 'junegunn/fzf.vim'
  use 'peitalin/vim-jsx-typescript'
  use 'justinmk/vim-sneak'
  use 'dart-lang/dart-vim-plugin'
  use 'terryma/vim-multiple-cursors'
  use 'yuezk/vim-js'
  use 'maxmellon/vim-jsx-pretty'
  use {'styled-components/vim-styled-components', branch = 'main'}
  use {'fatih/vim-go', run = ':GoUpdateBinaries'}
  use 'joshdick/onedark.vim'
  use 'frazrepo/vim-rainbow'
  use 'prettier/vim-prettier'
  use 'psliwka/vim-smoothie'
  use 'junegunn/vim-slash'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'jparise/vim-graphql'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'nvim-lua/plenary.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    branch = main,
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  use 'nvim-lua/popup.nvim'
  use {
    'glepnir/galaxyline.nvim', branch = 'main'
  }
  use 'pechorin/any-jump.vim'
  use 'romgrk/barbar.nvim'
end)


