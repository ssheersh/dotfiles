local keymap = vim.keymap
local opts = {noremap = true, silent = true}
local ls=require('plugins.luasnip')
-- Directory Navigation
keymap.set("n", "<leader>m",":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>f",":NvimTreeToggle<CR>", opts)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)--Navigate left
keymap.set("n", "<C-j>", "<C-w>j", opts)--Navigate down
keymap.set("n", "<C-k>", "<C-w>k", opts)--Navigate up
keymap.set("n", "<C-l>", "<C-w>l", opts)--Navigate right


-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)--Split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts)--Split horizontally

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", {noremap = false})
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", {noremap = false})


-- Undotree
keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", opts)

-- Git
keymap.set("n", "<leader>gs", vim.cmd.Git);


-- Snippets
-- Yes, we're just executing a bunch of Vimscript, but this is the officially
-- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps

-- keymap.set({'i', 's'}, "<c-k>", function()
--   if ls.expand_or_jumpable() then
--     ls.expand_or_jump()
--   end
-- end, {silent = true})

vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

