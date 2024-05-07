local opts = {
	ensure_installed = {
		"efm",
		"bashls",
		"tsserver",
		"solidity",
		"tailwindcss",
		"pyright",
		"lua_ls",
		"emmet_ls",
		"jsonls",
		"clangd",
	}
}


return {
{
    "williamboman/mason.nvim",
    cmd = "Mason",
    event = "BufReadPre",
    lazy = false,
    config = {
      ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        }
      }
    }
  },
{
	"williamboman/mason-lspconfig.nvim",
	automatic_installation = true,
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
},

  {--LSP Config
    "neovim/nvim-lspconfig",
    lazy=false,
    dependencies = {'hrsh7th/cmp-nvim-lsp'},
  },

  
}

