return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
  {
  	"tpope/vim-surround",
    lazy = false,
  },
  {
  	"tpope/vim-abolish",
    lazy = false,
  },
  {
  	"tpope/vim-fugitive",
    lazy = false,
  },
  {
  	"tpope/vim-rails",
    lazy = false,
  },
  {
  	"ludovicchabant/vim-gutentags",
    lazy = false,
  },

  {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/notes/vaults/personal",
      },
      {
        name = "work",
        path = "~/notes/vaults/work_notes",
      },
    },
  },
}
}
