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
  local opts = { noremap = true, silent = true }

  local mappings = {
    -- Word Navigation
    { 'n', 'w', 'cursorWordPartRight' },
    { 'n', 'b', 'cursorWordPartLeft' },
    { 'v', 'w', 'cursorWordPartRightSelect' },
    { 'v', 'b', 'cursorWordPartLeftSelect' },

    -- Code Navigation
    { 'n', '<leader>gd', 'editor.action.revealDefinition' },
    { 'n', '<leader>gy', 'editor.action.goToTypeDefinition' },
    { 'n', '<leader>gi', 'editor.action.goToImplementation' },
    { 'n', '<leader>gr', 'editor.action.goToReferences' },
    { 'n', '<leader>gs', 'workbench.action.gotoSymbol' },
    { 'n', '<leader>gl', 'workbench.action.gotoLine' },
    { 'n', '<leader>nf', 'workbench.action.navigateForward' },
    { 'n', '<leader>nb', 'workbench.action.navigateBack' },
    { 'n', '<leader>je', 'workbench.action.navigateToLastEditLocation' },

    -- Quick Search & Peek Actions
    { 'n', '<leader>ss', 'workbench.action.showAllSymbols' },
    { 'n', '<leader>sa', 'workbench.action.showCommands' },
    { 'n', '<leader>sf', 'workbench.action.quickOpen' },
    { 'n', '<leader>vd', 'editor.action.peekDefinition' },
    { 'n', '<leader>vi', 'editor.action.peekImplementation' },
    { 'n', '<leader>vt', 'editor.action.peekTypeDefinition' },
    { 'n', '<leader>vh', 'editor.action.showHover' },
    { 'n', '<leader>fr', 'references-view.findReferences' },
    { 'n', '<leader>sr', 'editor.action.referenceSearch.trigger' },

    -- Find, Replace & Refactoring
    { 'n', '<leader>ff', 'actions.find' },
    { 'n', '<leader>fr', 'editor.action.startFindReplaceAction' },
    { 'n', '<leader>fg', 'workbench.action.findInFiles' },
    { 'n', '<leader>rg', 'workbench.action.replaceInFiles' },
    { 'n', '<leader>re', 'editor.action.rename' },
    { 'n', '<leader>rf', 'editor.action.refactor' },
    { 'n', '<leader>qf', 'editor.action.quickFix' },
    { 'n', '<leader>sg', 'editor.action.triggerSuggest' },

    -- Line Editing & Code Maintenance
    { 'n', '<leader>lu', 'editor.action.copyLinesUpAction' },
    { 'n', '<leader>ld', 'editor.action.copyLinesDownAction' },
    { 'n', '<leader>mu', 'editor.action.moveLinesUpAction' },
    { 'n', '<leader>md', 'editor.action.moveLinesDownAction' },
    { 'n', '<leader>fm', 'editor.action.formatDocument' },
    { 'n', '<leader>oi', 'editor.action.organizeImports' },
    { 'n', '<leader>en', 'editor.action.marker.next' },
    { 'n', '<leader>ep', 'editor.action.marker.prev' },

    -- File & Workspace Management
    { 'n', '<leader>cp', 'copyFilePath' },
    { 'n', '<leader>cr', 'copyRelativeFilePath' },
    { 'n', '<leader>rl', 'workbench.action.openRecent' },
    { 'n', '<leader>nf', 'workbench.action.files.newUntitledFile' },
    { 'n', '<leader>cf', 'workbench.action.closeActiveEditor' },
    { 'n', '<leader>fa', 'workbench.action.closeAllEditors' },
    { 'n', '<leader>of', 'workbench.action.files.openFile' },
    { 'n', '<leader>rw', 'workbench.action.reloadWindow' },
    { 'n', '<leader>os', 'workbench.action.openSettingsJson' },

    -- Window Management
    { 'n', '<leader>wv', 'workbench.action.splitEditor' },
    { 'n', '<leader>wh', 'workbench.action.splitEditorDown' },
    { 'n', '<leader>ww', 'workbench.action.joinTwoGroups' },
    { 'n', '<leader>wa', 'workbench.action.evenEditorWidths' },
  }

  for _, mapping in ipairs(mappings) do
    local mode, key, command = mapping[1], mapping[2], mapping[3]

    vim.keymap.set(mode, key, function() vim.fn.VSCodeNotify(command) end, opts)
  end
end
