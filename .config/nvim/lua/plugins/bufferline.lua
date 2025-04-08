return {

{
        'akinsho/bufferline.nvim',
        opts = {
                options = {
                        mode = "buffers",
                        numbers = "none",
                        show_buffer_close_icons = false,
                        separator_style = 'slant',
                        style_preset = 'minimal',
                },
        },
        keys = {
                {mode = 'n','<leader>bd','<cmd>bdelete %<cr>',desc = 'bdelete %',},
                {mode = 'n','<leader>bb','<cmd>Dashboard<cr>',desc = 'Dashboard',},
        },
},

-- optional dependencies
{'nvim-tree/nvim-web-devicons', lazy = true,},

}
