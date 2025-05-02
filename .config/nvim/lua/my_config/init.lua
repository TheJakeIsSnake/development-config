vim.g.mapleader = " "

require("my_config.lazy_init")
require("my_config.setup")
require("my_config.keymap")

-- Plugins
require("scope").setup({})
require("project_nvim").setup({})
require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd =true,
  update_focused_file = {
    enable = true,
    update_root = true
  }
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "rust_analyzer", "clangd", "cssls", "docker_compose_language_service", "dockerls", "lexical", "html", "ts_ls", "jsonls", "harper_ls", "ruby_lsp"}
})
require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end
}

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})

require("tiny-inline-diagnostic").setup({
  preset = "powerline",
})

