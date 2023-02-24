vim.g.wiki_root = '/mnt/c/Users/ptr/OneDrive/wiki/'

vim.g.wiki_export = {
 args = '',
 from_format = 'markdown',
 ext = 'pdf',
 view = true,
 output = '/mnt/c/Users/ptr/OneDrive/wiki/pdf'
}
--vim.g.wiki_export({
--  function ()
--    vim.g.wiki_export = {
--      args = '',
--      from_format = 'markdown',
--      ext = 'pdf',
--      view = false,
--      output = fnamemodify(tempname(), ':p')
--    }
--  end
--})
