return { -- LSP Support
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
    keys = {
      {"<leader>i", "<cmd>LspInfo<cr>", "Lsp Info"},
      {"<leader>I", "<cmd>LspInstall<cr>", "Lsp Install"},
    },
    dependencies = {
          'neovim/nvim-lspconfig',
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/nvim-cmp',
          'L3MON4D3/LuaSnip',
    },
}
