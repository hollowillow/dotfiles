return {

{
        'tpope/vim-fugitive',
        lazy = true,
        cmd = 'Git',
        keys = {
                {mode = 'n','<leader>gw','<cmd>Gwrite<cr>',desc = 'Gwrite'},
                {mode = 'n','<leader>gc','<cmd>Git commit<cr>',desc = 'Git commit'},
                {mode = 'n','<leader>gb','<cmd>Git blame<cr>',desc = 'Git blame'},
                {mode = 'n','<leader>gs','<cmd>Git status<cr>',desc = 'Git status'},
                {mode = 'n','<leader>gd','<cmd>Git diff<cr>',desc = 'Git diff'},
        }
},

{
        'airblade/vim-gitgutter',
        lazy = false,
        -- turn off default keymaps
        init = function()
                vim.g.gitgutter_map_keys = 0
        end,
        keys = {
                {mode = 'n','<leader>gg','<cmd>GitGutterToggle<cr>',desc = 'GitGutterToggle'},
                {mode = 'n','<leader>gl','<cmd>GitGutterLineHighlightsToggle<cr>',desc = 'GitGutterLineHighlightsToggle'},
                {mode = 'n','<leader>gf','<cmd>GitGutterQuickFix<cr>',desc = 'GitGutterQuickFix'},
                {mode = 'n','<leader>ghs','<cmd>GitGutterStageHunk<cr>',desc = 'GitGutterQuickFix'},
                {mode = 'n','<leader>ghu','<cmd>GitGutterUndoHunk<cr>',desc = 'GitGutterUndoHunk'},
                {mode = 'n','<leader>ghp','<cmd>GitGutterPreviewHunk<cr>',desc = 'GitGutterPreviewHunk'},
                {mode = 'n',']h','<cmd>GitGutterNextHunk<cr>',desc = 'GitGutterNextHunk'},
                {mode = 'n','[h','<cmd>GitGutterPrevHunk<cr>',desc = 'GitGutterPrevHunk'},
        },
},

}
