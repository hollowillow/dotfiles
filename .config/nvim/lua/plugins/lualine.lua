return {

{
        "nvim-lualine/lualine.nvim",
        opts = {
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
                }
        },
},

-- optional dependencies
{'nvim-tree/nvim-web-devicons', lazy = true,},

}
