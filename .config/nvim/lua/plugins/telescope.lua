return {

{
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        keys = {
                {mode ='n','<leader>ff','<cmd>Telescope find_files<cr>',desc = 'Telescope find_files'},
                {mode ='n','<leader>fg','<cmd>Telescope live_grep<cr>',desc = 'Telescope live_grep'},
                {mode ='n','<leader>fb','<cmd>Telescope buffers<cr>',desc = 'Telescope buffers'},
                {mode ='n','<leader>fh','<cmd>Telescope help_tags<cr>',desc = 'Telescope help_tags'},
                {mode ='n','<leader>fr','<cmd>Telescope oldfiles<cr>',desc = 'Telescope help_tags'},
                {mode ='n','<leader>fp','<cmd>Telescope builtin<cr>',desc = 'Telescope help_tags'},
                {mode ='n', '<leader>fs', '<cmd>Telescope symbols<cr>', desc = 'Telescope help_tags'},
        }
},

-- dependencies
{'nvim-lua/plenary.nvim', lazy = true,},

-- optional dependencies
{'nvim-telescope/telescope-symbols.nvim'},

}
