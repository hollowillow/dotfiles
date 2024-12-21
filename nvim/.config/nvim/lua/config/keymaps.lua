-- Core
vim.keymap.set('i', 'ii', '<Esc>', { desc = 'Exit visual mode by typing ii' })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Telescope
vim.keymap.set('n', '<leader>ff', "<CMD>Telescope find_files<CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', "<CMD>Telescope live_grep<CR>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', "<CMD>Telescope buffers<CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', "<CMD>Telescope help_tags<CR>", { desc = 'Telescope help tags' })
