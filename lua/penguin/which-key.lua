local ok, wk = pcall(require, 'which-key')
if not ok then
  return
end

-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

local t_ok, _ = pcall(require, 'telescope')
if not t_ok then
  return
end

local builtin = require('telescope.builtin')

-- vim.keymap.set('n', '<Leader>ff', builtin.find_files)
-- vim.keymap.set('n', '<Leader><Space>', builtin.live_grep)
-- vim.keymap.set('n', '<Leader>bi', builtin.buffers)
-- vim.keymap.set('n', '<Leader>hi', builtin.help_tags)
-- vim.keymap.set('n', '<Leader>sk', builtin.keymaps)

local mappings = {
  f = {
    name = "files", -- optional group name
    f = { builtin.find_files, "Find File" }, -- create a binding with label
    r = { builtin.oldfiles, "Old files" },
    -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
    -- n = { "New File" }, -- just a label. don't create any mapping
    -- e = "Edit File", -- same as above
    -- ["1"] = "which_key_ignore",  -- special label to hide it in the popup
    -- b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },
  h = {
    name = "helps",
    t = { builtin.help_tags, "Show help tags" },
    k = { builtin.keymaps, "Show keymaps" },
  },
  b = {
    name = "buffers",
    i = { builtin.buffers, "Buffers" },
  },
  g = {
    g = { builtin.live_grep, "live_grep" },
  },
}

local options = {
  prefix = "<Leader>",
}

wk.register(mappings, options)
