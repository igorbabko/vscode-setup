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






if vim.g.vscode then
  -- Respect camelCase and snake_case word motions
  vim.keymap.set('n', 'w', function() vim.fn.VSCodeNotify('cursorWordPartRight') end, { noremap = true, silent = true })
  vim.keymap.set('n', 'b', function() vim.fn.VSCodeNotify('cursorWordPartLeft') end, { noremap = true, silent = true })
  vim.keymap.set('v', 'w', function() vim.fn.VSCodeNotify('cursorWordPartRightSelect') end, { noremap = true, silent = true })
  vim.keymap.set('v', 'b', function() vim.fn.VSCodeNotify('cursorWordPartLeftSelect') end, { noremap = true, silent = true })

  -- Window management
  vim.keymap.set('n', '<leader>wv', function() vim.fn.VSCodeNotify('workbench.action.splitEditor') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>wh', function() vim.fn.VSCodeNotify('workbench.action.splitEditorDown') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ww', function() vim.fn.VSCodeNotify('workbench.action.joinTwoGroups') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>wa', function() vim.fn.VSCodeNotify('workbench.action.evenEditorWidths') end, { noremap = true, silent = true })

  -- Search and navigation
  vim.keymap.set('n', '<leader>ss', function() vim.fn.VSCodeNotify('workbench.action.showAllSymbols') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>sa', function() vim.fn.VSCodeNotify('workbench.action.showCommands') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>sf', function() vim.fn.VSCodeNotify('workbench.action.quickOpen') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>gd', function() vim.fn.VSCodeNotify('editor.action.revealDefinition') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>gy', function() vim.fn.VSCodeNotify('editor.action.goToTypeDefinition') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>gi', function() vim.fn.VSCodeNotify('editor.action.goToImplementation') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>gr', function() vim.fn.VSCodeNotify('editor.action.goToReferences') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>gs', function() vim.fn.VSCodeNotify('workbench.action.gotoSymbol') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>gl', function() vim.fn.VSCodeNotify('workbench.action.gotoLine') end, { noremap = true, silent = true })

  -- Usage info
  vim.keymap.set('n', '<leader>fr', function() vim.fn.VSCodeNotify('references-view.findReferences') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>sr', function() vim.fn.VSCodeNotify('editor.action.referenceSearch.trigger') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>vd', function() vim.fn.VSCodeNotify('editor.action.peekDefinition') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>vi', function() vim.fn.VSCodeNotify('editor.action.peekImplementation') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>vt', function() vim.fn.VSCodeNotify('editor.action.peekTypeDefinition') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>vh', function() vim.fn.VSCodeNotify('editor.action.showHover') end, { noremap = true, silent = true })

  -- Find and replace
  vim.keymap.set('n', '<leader>ff', function() vim.fn.VSCodeNotify('actions.find') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>fr', function() vim.fn.VSCodeNotify('editor.action.startFindReplaceAction') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>fg', function() vim.fn.VSCodeNotify('workbench.action.findInFiles') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>rg', function() vim.fn.VSCodeNotify('workbench.action.replaceInFiles') end, { noremap = true, silent = true })

  -- Refactoring
  vim.keymap.set('n', '<leader>re', function() vim.fn.VSCodeNotify('editor.action.rename') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>rf', function() vim.fn.VSCodeNotify('editor.action.refactor') end, { noremap = true, silent = true })

  -- Actions and generation
  vim.keymap.set('n', '<leader>qf', function() vim.fn.VSCodeNotify('editor.action.quickFix') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>sg', function() vim.fn.VSCodeNotify('editor.action.triggerSuggest') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>lu', function() vim.fn.VSCodeNotify('editor.action.copyLinesUpAction') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ld', function() vim.fn.VSCodeNotify('editor.action.copyLinesDownAction') end, { noremap = true, silent = true })

  -- Navigation
  vim.keymap.set('n', '<leader>en', function() vim.fn.VSCodeNotify('editor.action.marker.next') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>ep', function() vim.fn.VSCodeNotify('editor.action.marker.prev') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>je', function() vim.fn.VSCodeNotify('workbench.action.navigateToLastEditLocation') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>rl', function() vim.fn.VSCodeNotify('workbench.action.openRecent') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>nf', function() vim.fn.VSCodeNotify('workbench.action.navigateForward') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>nb', function() vim.fn.VSCodeNotify('workbench.action.navigateBack') end, { noremap = true, silent = true })

  -- Formatting
  vim.keymap.set('n', '<leader>fm', function() vim.fn.VSCodeNotify('editor.action.formatDocument') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>oi', function() vim.fn.VSCodeNotify('editor.action.organizeImports') end, { noremap = true, silent = true })

  -- Line movement
  vim.keymap.set('n', '<leader>mu', function() vim.fn.VSCodeNotify('editor.action.moveLinesUpAction') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>md', function() vim.fn.VSCodeNotify('editor.action.moveLinesDownAction') end, { noremap = true, silent = true })

  -- Copy actions
  vim.keymap.set('n', '<leader>cp', function() vim.fn.VSCodeNotify('copyFilePath') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>cr', function() vim.fn.VSCodeNotify('copyRelativeFilePath') end, { noremap = true, silent = true })

  -- File operations
  vim.keymap.set('n', '<leader>nf', function() vim.fn.VSCodeNotify('workbench.action.files.newUntitledFile') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>cf', function() vim.fn.VSCodeNotify('workbench.action.closeActiveEditor') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>fa', function() vim.fn.VSCodeNotify('workbench.action.closeAllEditors') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>of', function() vim.fn.VSCodeNotify('workbench.action.files.openFile') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>rw', function() vim.fn.VSCodeNotify('workbench.action.reloadWindow') end, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>os', function() vim.fn.VSCodeNotify('workbench.action.openSettingsJson') end, { noremap = true, silent = true })























end
