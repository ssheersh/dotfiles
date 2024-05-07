local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('config.globals')
require('config.keymaps')
require('config.options')
local opts = {
	defaults = {
		lazy=true,
	},
	install = {
		colorscheme = {'nightfox'}
	},
  rtp ={
    disabled_plugins = {
      "netrw",
      "netrwPlugin",
    }
  },
	change_detection = { notify=true,},
}


require("lazy").setup('plugins', opts)
function ColorMyPencils(color)
  color = color or "nightfox"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", {bg="none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
end

ColorMyPencils()

-- Somewhere in your Neovim startup, e.g. init.lua
require("luasnip").config.set_config({ -- Setting LuaSnip config
  --history
  history = true,

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",

  -- To change the text as you write
   update_events = 'TextChanged,TextChangedI',
})

