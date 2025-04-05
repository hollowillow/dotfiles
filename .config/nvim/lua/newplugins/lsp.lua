return {

{
'williamboman/mason.nvim',
config = function()
        require("mason").setup()
end,
},


{
'williamboman/mason-lspconfig.nvim',
config = function()
        require("mason-lspconfig").setup({
                -- lsp
                ensure_installed = {"lua_ls", "bashls", "clangd", "marksman", "cssls", "html",},
        })
end,
},

{
'neovim/nvim-lspconfig',
config = function()
        local lspconfig = require("lspconfig")
        -- lsp 
        lspconfig.lua_ls.setup({})
        lspconfig.bashls.setup({})
        lspconfig.clangd.setup({})
        lspconfig.marksman.setup({})
        lspconfig.cssls.setup({})
        lspconfig.html.setup({})
        -- keybinds
        vim.keymap.set('n', '<leader>ll', vim.lsp.buf.hover, { desc = 'lsp hover' })
        vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { desc = 'lsp code action' })
        vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'lsp definition' })
end,
},

}
