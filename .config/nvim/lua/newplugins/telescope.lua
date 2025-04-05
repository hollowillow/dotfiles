return {
        {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function ()
                -- Keymaps
                vim.keymap.set('n', '<leader>ff', "<CMD>Telescope find_files<CR>", { desc = 'Telescope find files' })
                vim.keymap.set('n', '<leader>fg', "<CMD>Telescope live_grep<CR>", { desc = 'Telescope live grep' })
                vim.keymap.set('n', '<leader>fb', "<CMD>Telescope buffers<CR>", { desc = 'Telescope buffers' })
                vim.keymap.set('n', '<leader>fh', "<CMD>Telescope help_tags<CR>", { desc = 'Telescope help tags' })
                vim.keymap.set('n', '<leader>fn', "<CMD>Telescope notify<CR>", { desc = 'Telescope notify' })
        end,
        },
}
