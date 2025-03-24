vim.g.mapleader = ' '

vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

if vim.g.vscode then
  vim.keymap.set('n', '<leader>u,', function() vim.fn.VSCodeNotify('fileutils.newFile') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>u.', function() vim.fn.VSCodeNotify('fileutils.newFolder') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>um', function() vim.fn.VSCodeNotify('fileutils.newFileAtRoot') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>u/', function() vim.fn.VSCodeNotify('fileutils.newFolderAtRoot') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>uc', function() vim.fn.VSCodeNotify('fileutils.duplicateFile') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ud', function() vim.fn.VSCodeNotify('fileutils.removeFile') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>uu', function() vim.fn.VSCodeNotify('fileutils.moveFile') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ur', function() vim.fn.VSCodeNotify('fileutils.renameFile') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>un', function() vim.fn.VSCodeNotify('fileutils.copyFileName') end, { noremap = true, silent = true })
end
