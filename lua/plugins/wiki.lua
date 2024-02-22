local g = vim.g

return {
  'lervag/wiki.vim',
  lazy = false,
  init = function(_, opts)
    g.wiki_root = '/mnt/e/OneDrive/wiki/'
    g.wiki_filetypes = {"wiki"}
    vim.keymap.set("n", "<leader>w<leader>w", ":WikiJournal<CR>", {silent = true})
    vim.keymap.set("n", "<leader>ww", ":WikiIndex<CR>", {silent = true})
  end,
}
