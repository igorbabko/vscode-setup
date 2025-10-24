-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    {
      "nvim-treesitter/nvim-treesitter",
      dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
      },
      build = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup({
          auto_install = true,

          textobjects = {
            select = {
              enable = true,
              lookahead = true,
              keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ai"] = "@conditional.outer",
                ["ii"] = "@conditional.inner",
                ["al"] = "@loop.outer",
                ["il"] = "@loop.inner",
                ["am"] = "@call.outer",
                ["im"] = "@call.inner",
                ["ab"] = "@block.outer",
                ["ib"] = "@block.inner",
                ["aa"] = "@parameter.outer",
                ["ia"] = "@parameter.inner",
                ["a/"] = "@comment.outer",
                ["i/"] = "@comment.inner",
                ["as"] = "@statement.outer",
                ["ga="] = "@assignment.outer",
                ["gi="] = "@assignment.inner",
                ["gl="] = "@assignment.lhs",
                ["gr="] = "@assignment.rhs",
                ["ar"] = "@return.outer",
                ["ir"] = "@return.inner",
                ["az"] = "@regex.outer",
                ["iz"] = "@regex.inner",
              },
            },

            move = {
              enable = true,
              goto_next_start = {
                ["]f"] = "@function.outer",
                ["]c"] = "@class.outer",
                ["]i"] = "@conditional.outer",
                ["]l"] = "@loop.outer",
                ["]m"] = "@call.outer",
                ["]b"] = "@block.outer",
                ["]a"] = "@parameter.inner",
                ["]/"] = "@comment.outer",
                ["]s"] = "@statement.outer",
                ["]="] = "@assignment.outer",
                ["]r"] = "@return.outer",
              },
              goto_next_end = {
                ["]F"] = "@function.outer",
                ["]C"] = "@class.outer",
                ["]I"] = "@conditional.outer",
                ["]L"] = "@loop.outer",
                ["]M"] = "@call.outer",
                ["]B"] = "@block.outer",
                ["]A"] = "@parameter.inner",
              },
              goto_previous_start = {
                ["[f"] = "@function.outer",
                ["[c"] = "@class.outer",
                ["[i"] = "@conditional.outer",
                ["[l"] = "@loop.outer",
                ["[m"] = "@call.outer",
                ["[b"] = "@block.outer",
                ["[a"] = "@parameter.inner",
                ["[/"] = "@comment.outer",
                ["[s"] = "@statement.outer",
                ["[="] = "@assignment.outer",
                ["[r"] = "@return.outer",
              },
              goto_previous_end = {
                ["[F"] = "@function.outer",
                ["[C"] = "@class.outer",
                ["[I"] = "@conditional.outer",
                ["[L"] = "@loop.outer",
                ["[M"] = "@call.outer",
                ["[B"] = "@block.outer",
                ["[A"] = "@parameter.inner",
              },
            },
          },
        })
      end
    },
  },
})
