-- Install Snacks.nvim using Neovim's built-in plugin manager
vim.pack.add({
  { src = 'https://github.com/folke/snacks.nvim' },
})

-- Enable only the terminal feature
require('snacks').setup({
  terminal = {
    win = {
      position = 'bottom',
      height = 15,
    },
  },
})

-- Toggle terminal with Ctrl+/
vim.keymap.set({ 'n', 't' }, '<C-/>', function()
  require('snacks').terminal.toggle()
end, { desc = 'Toggle terminal' })

