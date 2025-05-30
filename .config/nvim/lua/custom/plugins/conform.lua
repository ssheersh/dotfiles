return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        cpp = { 'clang_format' },
        c = { 'clang_format' },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    }
  end,
}
