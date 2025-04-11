return {
        {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        -- dependencies = { { "echasnovski/mini.icons", opts = {}, }, },
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
                require('oil').setup({
                        default_file_explorer = true,
                        columns = { "icon" }, -- "permissions", "mtime", "size"
                })
                -- Keymaps
                vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end,
        },
}
