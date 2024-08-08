return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
  
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup{
        size = 12,
        open_mapping = [[<c-\>]],
        direction = 'horizontal',
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        persist_size = true,
        close_on_exit = true,
        shell = 'pwsh.exe',
      }
    end
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' }, -- Telescope requires plenary and optionally treesitter
    config = function()
      require('Srijan.plugins.telescope') -- Require the telescope configuration
    end
  },

  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate', -- Update treesitter parsers
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = "maintained", -- or specify a list of parsers
        highlight = { enable = true },
      }
    end
  },
}

