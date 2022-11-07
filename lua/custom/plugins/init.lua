return {
  --  Plugins
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require 'custom.plugins.closetag'
    end,
  },
  ["iamcco/markdown-preview.nvim"] = {
    run = function() vim.fn["mkdp#util#install"]() end,
    mkdp_theme='dark'
  },
  ["folke/zen-mode.nvim"] = {
    config = function()
      require("zen-mode").setup {}
    end
  },
  ["windwp/nvim-autopairs"] = {
    config = function() require("nvim-autopairs").setup {} end
  },
  ["github/copilot.vim"] = {},
  ["hrsh7th/cmp-copilot"] = {
    after = "nvim-cmp",
  },
  ["alexghergh/nvim-tmux-navigation"] = {
    config = function()
      local nvim_tmux_nav = require('nvim-tmux-navigation')

      nvim_tmux_nav.setup {
        disable_when_zoomed = true -- defaults to false
      }

      vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
      vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
      vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
      vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
      vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
      vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

    end
  },
  ["kdheepak/lazygit.nvim"] = {},

  -- LSP/Formatting
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    commit = "76d0573fc159839a9c4e62a0ac4f1046845cdd50",
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
    requires = { "nvim-lua/plenary.nvim" },
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "sqls",
        "typescript-language-server",
        "python-lsp-server",
        "prettierd",
        "mypy",
        "json-lsp",
        "dockerfile-language-server",
        "lua-language-server",
        "black",
        "css-lsp",
      },
    },
  },
  ["tpope/vim-surround"] = {},
}
