vim.opt_local.wrap = true
vim.opt_local.textwidth = 80

-- Set
-- Journal
vim.keymap.set("n", "<leader>wji", "<plug>(wiki-journal-index)")

-- Don't really need this to find stuff. Use telescope + harpoon instead.
vim.keymap.set("n", "<leader>wf", "<plug>(wiki-fzf-pages)")
vim.keymap.set('n', '<leader>we', '<plug>(wiki-export)')
