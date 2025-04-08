return {

{

'folke/noice.nvim',
event = "VeryLazy",
opts = {
},
},

-- dependencies
{'MunifTanjim/nui.nvim', lazy = true,},

-- optional dependencies
{
        'rcarriga/nvim-notify',
        lazy = true,
        keys = {{mode = 'n','<leader>fn','<cmd>Telescope notify<cr>',desc = 'Telescope notify'}},
},

}
