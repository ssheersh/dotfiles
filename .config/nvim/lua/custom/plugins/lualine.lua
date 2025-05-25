-- custom/plugins/lualine.lua

return {
  'nvim-lualine/lualine.nvim',
  opts = function(_, opts)
    opts.options = {
      theme = 'tokyonight', -- Or 'tokyonight', 'catppuccin', etc. Pick your vibe.
      icons_enabled = true,

      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = { 'NvimTree', 'neo-tree', 'alpha' },
    }

    opts.sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', path = 1 } }, -- path=1 shows relative path
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    }

    opts.inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    }

    opts.extensions = { 'nvim-tree', 'quickfix', 'toggleterm', 'fugitive' }
  end,
}
