local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

-- local builtin = require('telescope.builtin')

telescope.setup({})

-- vim.keymap.set('n', '<Leader>ff', builtin.find_files)
-- vim.keymap.set('n', '<Leader><Space>', builtin.live_grep)
-- vim.keymap.set('n', '<Leader>bi', builtin.buffers)
-- vim.keymap.set('n', '<Leader>hi', builtin.help_tags)
-- vim.keymap.set('n', '<Leader>sk', builtin.keymaps)
