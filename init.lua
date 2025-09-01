-- if vim.g.vscode then
--   vim.keymap.set('n', '<leader>u,', function() vim.fn.VSCodeNotify('fileutils.newFile') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>u.', function() vim.fn.VSCodeNotify('fileutils.newFolder') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>um', function() vim.fn.VSCodeNotify('fileutils.newFileAtRoot') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>u/', function() vim.fn.VSCodeNotify('fileutils.newFolderAtRoot') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>uc', function() vim.fn.VSCodeNotify('fileutils.duplicateFile') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>ud', function() vim.fn.VSCodeNotify('fileutils.removeFile') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>uu', function() vim.fn.VSCodeNotify('fileutils.moveFile') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>ur', function() vim.fn.VSCodeNotify('fileutils.renameFile') end, { noremap = true, silent = true })
--   vim.keymap.set('n', '<leader>un', function() vim.fn.VSCodeNotify('fileutils.copyFileName') end, { noremap = true, silent = true })
-- end








-- <leader> key
vim.g.mapleader = ' '

-- open config
vim.cmd('nmap <leader>co :e ~/.config/nvim/init.lua<cr>')

-- save
vim.cmd('nmap <leader>s :w<cr>')

-- motion keys (left, down, up, right)
vim.keymap.set({ 'n', 'v' }, 'j', 'h')
vim.keymap.set({ 'n', 'v' }, 'k', 'j')
vim.keymap.set({ 'n', 'v' }, 'l', 'k')
vim.keymap.set({ 'n', 'v' }, ';', 'l')

-- repeat previous f, t, F or T movement
vim.keymap.set('n', '\'', ';')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- redo
vim.keymap.set('n', 'U', '<C-r>')

-- clear search highlighting
-- vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')
vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<cr>')

-- skip folds (down, up)
vim.cmd('nmap k gj')
vim.cmd('nmap l gk')

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true







-- camelCaseWord snake_case_word





-- Word movement mappings for camelCase and snake_case
-- vim.keymap.set({'n', 'v'}, 'w', function()
--   return require('vscode-neovim').call('cursorWordStartRight')
-- end, { desc = 'Next word start' })
vim.keymap.set('n', 'w', function() vim.fn.VSCodeNotify('cursorWordPartRight') end, { noremap = true, silent = true })
vim.keymap.set('v', 'w', function() vim.fn.VSCodeNotify('cursorWordPartRightSelect') end, { noremap = true, silent = true })

-- vim.keymap.set({'n', 'v'}, 'e', function()
--   return require('vscode-neovim').call('cursorWordEndRight')
-- end, { desc = 'Next word end' })
-- vim.keymap.set('n', 'e', function() vim.fn.VSCodeNotify('cursorWordEndRight') end, { noremap = true, silent = true })
-- vim.keymap.set('v', 'e', function() vim.fn.VSCodeNotify('cursorWordEndRightSelect') end, { noremap = true, silent = true })


-- vim.keymap.set({'n', 'v'}, 'b', function()
--   return require('vscode-neovim').call('cursorWordStartLeft')
-- end, { desc = 'Previous word start' })
vim.keymap.set('n', 'b', function() vim.fn.VSCodeNotify('cursorWordPartLeft') end, { noremap = true, silent = true })
vim.keymap.set('v', 'b', function() vim.fn.VSCodeNotify('cursorWordPartLeftSelect') end, { noremap = true, silent = true })

-- vim.keymap.set({'n', 'v'}, 'ge', function()
--   return require('vscode-neovim').call('cursorWordEndLeft')
-- end, { desc = 'Previous word end' })
-- vim.keymap.set('n', 'ge', function() vim.fn.VSCodeNotify('cursorWordPartStartLeft') end, { noremap = true, silent = true })
-- vim.keymap.set('v', 'ge', function() vim.fn.VSCodeNotify('cursorWordPartStartLeftSelect') end, { noremap = true, silent = true })

-- Split navigation
-- vim.keymap.set('n', '<A-j>', function()
--   return require('vscode-neovim').call('workbench.action.focusLeftGroup')
-- end, { desc = 'Focus left editor group' })

-- vim.keymap.set('n', '<A-k>', function()
--   return require('vscode-neovim').call('workbench.action.focusBelowGroup')
-- end, { desc = 'Focus below editor group' })

-- vim.keymap.set('n', '<A-l>', function()
--   return require('vscode-neovim').call('workbench.action.focusAboveGroup')
-- end, { desc = 'Focus above editor group' })

-- vim.keymap.set('n', '<A-;>', function()
--   return require('vscode-neovim').call('workbench.action.focusRightGroup')
-- end, { desc = 'Focus right editor group' })

-- vim.keymap.set('n', '<C-j>', function() vim.fn.VSCodeNotify('workbench.action.navigateLeft') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-k>', function() vim.fn.VSCodeNotify('workbench.action.navigateDown') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-l>', function() vim.fn.VSCodeNotify('workbench.action.navigateUp') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-;>', function() vim.fn.VSCodeNotify('workbench.action.navigateRight') end, { noremap = true, silent = true })

-- vim.keymap.set('n', '<C-j>', function() vim.fn.VSCodeNotify('workbench.action.navigateLeft') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-k>', function() vim.fn.VSCodeNotify('workbench.action.navigateDown') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-l>', function() vim.fn.VSCodeNotify('workbench.action.navigateUp') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-;>', function() vim.fn.VSCodeNotify('workbench.action.navigateRight') end, { noremap = true, silent = true })


-- -- Window/split management

vim.keymap.set('n', '<leader>wv', function() vim.fn.VSCodeNotify('workbench.action.splitEditor') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wh', function() vim.fn.VSCodeNotify('workbench.action.splitEditorDown') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ww', function() vim.fn.VSCodeNotify('workbench.action.joinTwoGroups') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>wa', function() vim.fn.VSCodeNotify('workbench.action.evenEditorWidths') end, { noremap = true, silent = true })


-- -- Search and navigation

vim.keymap.set('n', '<leader>ss', function() vim.fn.VSCodeNotify('workbench.action.showAllSymbols') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sa', function() vim.fn.VSCodeNotify('workbench.action.showCommands') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sf', function() vim.fn.VSCodeNotify('workbench.action.quickOpen') end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gd', function() vim.fn.VSCodeNotify('editor.action.revealDefinition') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gy', function() vim.fn.VSCodeNotify('editor.action.goToTypeDefinition') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gi', function() vim.fn.VSCodeNotify('editor.action.goToImplementation') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', function() vim.fn.VSCodeNotify('editor.action.goToReferences') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gs', function() vim.fn.VSCodeNotify('workbench.action.gotoSymbol') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gl', function() vim.fn.VSCodeNotify('workbench.action.gotoLine') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gt', function() vim.fn.VSCodeNotify('testing.goToRelatedTest') end, { noremap = true, silent = true }) --






-- -- Usage and information

vim.keymap.set('n', '<leader>fr', function() vim.fn.VSCodeNotify('references-view.findReferences') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sr', function() vim.fn.VSCodeNotify('editor.action.referenceSearch.trigger') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>vd', function() vim.fn.VSCodeNotify('editor.action.peekDefinition') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>vi', function() vim.fn.VSCodeNotify('editor.action.peekImplementation') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>vt', function() vim.fn.VSCodeNotify('editor.action.peekTypeDefinition') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>vh', function() vim.fn.VSCodeNotify('editor.action.showHover') end, { noremap = true, silent = true })



-- -- Find and replace

vim.keymap.set('n', '<leader>ff', function() vim.fn.VSCodeNotify('actions.find') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fr', function() vim.fn.VSCodeNotify('editor.action.startFindReplaceAction') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fg', function() vim.fn.VSCodeNotify('workbench.action.findInFiles') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rg', function() vim.fn.VSCodeNotify('workbench.action.replaceInFiles') end, { noremap = true, silent = true })


-- -- Refactoring

vim.keymap.set('n', '<leader>re', function() vim.fn.VSCodeNotify('editor.action.rename') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rf', function() vim.fn.VSCodeNotify('editor.action.refactor') end, { noremap = true, silent = true })



-- -- Actions and generation

vim.keymap.set('n', '<leader>qf', function() vim.fn.VSCodeNotify('editor.action.quickFix') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sr', function() vim.fn.VSCodeNotify('editor.action.surroundWithSnippet') end, { noremap = true, silent = true }) --


vim.keymap.set('n', '<leader>sg', function() vim.fn.VSCodeNotify('editor.action.triggerSuggest') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>lu', function() vim.fn.VSCodeNotify('editor.action.copyLinesUpAction') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ld', function() vim.fn.VSCodeNotify('editor.action.copyLinesDownAction') end, { noremap = true, silent = true })



-- -- Navigation

vim.keymap.set('n', '<leader>en', function() vim.fn.VSCodeNotify('editor.action.marker.next') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ep', function() vim.fn.VSCodeNotify('editor.action.marker.prev') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>je', function() vim.fn.VSCodeNotify('workbench.action.navigateToLastEditLocation') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rl', function() vim.fn.VSCodeNotify('workbench.action.openRecent') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>nf', function() vim.fn.VSCodeNotify('workbench.action.navigateForward') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>nb', function() vim.fn.VSCodeNotify('workbench.action.navigateBack') end, { noremap = true, silent = true })


-- -- Code formatting

vim.keymap.set('n', '<leader>fm', function() vim.fn.VSCodeNotify('editor.action.formatDocument') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>oi', function() vim.fn.VSCodeNotify('editor.action.organizeImports') end, { noremap = true, silent = true })



-- -- Line movement

vim.keymap.set('n', '<leader>mu', function() vim.fn.VSCodeNotify('editor.action.moveLinesUpAction') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>md', function() vim.fn.VSCodeNotify('editor.action.moveLinesDownAction') end, { noremap = true, silent = true })



-- -- Copy actions

vim.keymap.set('n', '<leader>cp', function() vim.fn.VSCodeNotify('copyFilePath') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>cr', function() vim.fn.VSCodeNotify('copyRelativeFilePath') end, { noremap = true, silent = true })



-- -- File operations

vim.keymap.set('n', '<leader>nf', function() vim.fn.VSCodeNotify('workbench.action.files.newUntitledFile') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>cf', function() vim.fn.VSCodeNotify('workbench.action.closeActiveEditor') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fa', function() vim.fn.VSCodeNotify('workbench.action.closeAllEditors') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>ne', function() vim.fn.VSCodeNotify('explorer.newFile') end, { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>nd', function() vim.fn.VSCodeNotify('explorer.newFolder') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>of', function() vim.fn.VSCodeNotify('workbench.action.files.openFile') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rw', function() vim.fn.VSCodeNotify('workbench.action.reloadWindow') end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>os', function() vim.fn.VSCodeNotify('workbench.action.openSettingsJson') end, { noremap = true, silent = true })






















