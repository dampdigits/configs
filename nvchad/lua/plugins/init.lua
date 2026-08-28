return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
  		},
  	},
  },

  -- Auto switch themes
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    config = function()
      local auto_dark_mode = require("auto-dark-mode")

      local light_theme = "github_light"
      local dark_theme = "github_dark"

      auto_dark_mode.setup({
        update_interval = 1000,

        set_light_mode = function()
          vim.api.nvim_set_option_value("background", "light", {})
          if vim.g.nvchad_theme ~= light_theme then
            require("base46").toggle_theme()
          end
        end,

        set_dark_mode = function()
          vim.api.nvim_set_option_value("background", "dark", {})
          if vim.g.nvchad_theme ~= dark_theme then
            require("base46").toggle_theme()
          end
        end,
      })
    end,
  },
}
