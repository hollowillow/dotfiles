return {

{
        "folke/zen-mode.nvim",
        opts = {
                twilight = {enabled = true},
        },
        keys = {
                {mode = 'n','<leader>zm','ZenMode',desc = 'ZenMode',},
        }
},

-- optional dependencies
{'folke/twilight.nvim', lazy = true,},

}
