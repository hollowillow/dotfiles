return {

{
'ThePrimeagen/vim-be-good',
config = function()
        require("vim-be-good")
end,
},

{
"m4xshen/hardtime.nvim",
dependencies = { "MunifTanjim/nui.nvim" },
config = function()
        require("hardtime").setup({})
end,
},

}
