return {

{
'akinsho/bufferline.nvim',
dependencies = 'nvim-tree/nvim-web-devicons',
config = function()
        require('bufferline').setup {

                --- config ---
                options = {
                        mode = "buffers",
                        numbers = "none",
                        show_buffer_close_icons = false,
                        separator_style = 'slant',
                        style_preset = 'minimal',
                },
                --- config ---

        }
end,
},

}
