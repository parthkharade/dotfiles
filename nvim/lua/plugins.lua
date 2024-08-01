-- BOOTSTRAPPING
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use 'rktjmp/lush.nvim' -- This is for themes.
  use 'okaihe/okai' -- Okai Theme
  use 'ellisonleao/gruvbox.nvim' -- Gruvbox theme
  use 'xero/miasma.nvim'
  use 'ptdewey/darkearth-nvim'
  use 'nvim-tree/nvim-web-devicons' -- For fancy file icons
  use 'nvim-lualine/lualine.nvim' -- Status bar in nvim 
  use 'tpope/vim-commentary' -- gcc to comment !
  use 'nvim-tree/nvim-tree.lua' -- File browse --> Don't need this, mehh remove
  use 'nvim-treesitter/nvim-treesitter' -- Syntax highlighting, Kinda works
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6', -- Best plugin ever, Live Grep is amazing.
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'Vimjas/vim-python-pep8-indent'
  use {'neoclide/coc.nvim', branch = 'release'} -- Menu Based Completion for Nvim. Kinda Works.
  use 'neovim/nvim-lspconfig' -- Does not work really well for Bazel. Try for CMake or make based projects later.
  -- use {
  --   'ten3roberts/qf.nvim',
  --   config = function()
  --     require'qf'.setup{}
  --   end
  -- }
  -- Packer
  use {
    "eoh-bse/minintro.nvim",
    config = function() require("minintro").setup() end
  }
  use 'tpope/vim-fugitive'
  -- use 'github/copilot.vim' -- Enable this with caution. Don't when you are learning something new!
  -- use 'hrsh7th/nvim-cmp' -- Enable this if lsp ever works
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
