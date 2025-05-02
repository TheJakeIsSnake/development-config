return {
  {
    'akinsho/bufferline.nvim', version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function()
      local configs = require("bufferline")
      configs.setup({
        options = {
          mode = "buffers",
          numbers = "none",
          tab_size = 10,
          offsets = {
              {
                  filetype = "NvimTree",
                  text = "File Explorer",
                  text_align = "left",
                  separator = true
              }
          },
          color_icons = true, -- Whether or not to add the filetype icon highlights
        }
      })
    end
  }
}
