return {
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  {"mbbill/undotree", lazy= false},
  "tpope/vim-fugitive",
  "ap/vim-css-color",
  "preservim/nerdtree",
  "m4xshen/autoclose.nvim",
{
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup()
  end
}

}
