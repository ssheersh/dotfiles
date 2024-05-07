return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {"c", "python" ,"latex", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html"},
      sync_install = false,
      highlight = {enable = true,  disable ={'latex'}},
      indent = {enable = true},
    })
  end

}
