return {
  {"williamboman/mason.nvim"},
  {"neovim/nvim-lspconfig"},
  {"williamboman/mason-lspconfig.nvim"},
  {"mfussenegger/nvim-dap"},
  {"rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}},
  {"mfussenegger/nvim-lint"},
  {"mhartington/formatter.nvim"},
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/cmp-buffer"},
  {"hrsh7th/cmp-path"},
  {"hrsh7th/cmp-cmdline"},
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
        }, {
          { name = 'buffer' },
        })
      })
       -- Set up lspconfig.
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Iterate through a list of lsps and add them to the auto-complete
      local lsps = {'ruby_lsp', 'lexical'}

      for _, lsp in pairs(lsps) do
        require('lspconfig')[lsp].setup {
         capabilities = capabilities
        }
      end
    end
  }
}

