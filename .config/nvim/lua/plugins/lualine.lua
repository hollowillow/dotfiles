return {

{
        "nvim-lualine/lualine.nvim",
        opts = {
                sections = {
                        lualine_a = {'mode'},
                        lualine_b = {'branch', 'diff', 'diagnostics'},
                        lualine_c = {'filename'},
                        lualine_x = {'filetype', 'searchcount',},
                        lualine_y = {'progress',
                        -- show wordcount for markdown files
                                function()
                                        if vim.bo.filetype == 'markdown' then
                                                return "Words: " .. vim.fn.wordcount().words
                                        else
                                                return ''
                                end
                        end
                        },
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
