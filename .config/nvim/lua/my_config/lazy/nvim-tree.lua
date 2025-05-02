return{
  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    config = function ()
      require("project_nvim").setup()
    end
  },
  {"nvim-tree/nvim-tree.lua"}
}
