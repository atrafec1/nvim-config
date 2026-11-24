-- snacks.lua: terminal toggle with Ctrl+/

vim.pack.add {
  { src = 'https://github.com/folke/snacks.nvim' },
}

local Snacks = require 'snacks'

Snacks.setup {
  terminal = { enabled = true },
  styles = {
    terminal = {
      position = 'bottom',
      height = 15,
    },
  },
}

local function toggle_term()
  Snacks.terminal.toggle()
end

-- Many terminal emulators send Ctrl+/ as <C-_>, so map both.
-- Mapping 't' mode is what lets the same key close it from inside the terminal.
vim.keymap.set({ 'n', 't' }, '<C-/>', toggle_term, { desc = 'Toggle terminal' })
vim.keymap.set({ 'n', 't' }, '<C-_>', toggle_term, { desc = 'Toggle terminal' })
