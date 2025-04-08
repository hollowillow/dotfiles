return {

{
"nvim-lualine/lualine.nvim",
dependencies = { 'nvim-tree/nvim-web-devicons' },
config = function()
        require('lualine').setup {

        -- config --
        sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'filetype', 'searchcount'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
        },

        extensions = {
                'lazy',
                'mason',
                'man',
                'oil',
        },
        -- config --

        }
end,
},

}
