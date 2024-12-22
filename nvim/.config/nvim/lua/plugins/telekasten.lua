return {
        {
        'renerocksai/telekasten.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function ()
                --- Base Configs
                require('telekasten').setup({
                        home = vim.fn.expand("~/notes/zettelkasten"), -- default vault
                        templates = vim.fn.expand("~/notes/zettelkasten/templates"), 
                        follow_creates_nonexisting = true,
                        tag_notation = "yaml-bare",
                        show_tags_theme = "get_cursor",
                        filename_space_subst = "-",
                        filename_small_case = true,
                        rename_update_links = true,
                        vaults = { -- setup for multiple vaults
                                --zettelkasten = { home = vim.fn.expand("~/notes/zettelkasten/"), templates = vim.fn.expand("~/notes/zettelkasten/templates") },
                        },
                })

                --- Markdown Highlighting
                vim.cmd('hi tkLink ctermfg=Magenta cterm=underline guifg=#d3869b gui=underline')
                vim.cmd('hi tkAliasedLink ctermfg=Gray cterm=underline guifg=#928374 gui=underline')
                vim.cmd('hi tkBrackets ctermfg=Gray cterm=underline guifg=#928374 gui=underline')
                vim.cmd('hi tkTag ctermfg=Magenta guifg=#d3869b')
                vim.cmd('hi tkHighlight ctermbg=Yellow cterm=inverse guifg=#e3a84e gui=inverse')
                --vim.cmd('hi CalNavi')

                --- Keybinds
                vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>", { desc = 'find all notes within a vault' })
                vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>", { desc = 'search all notes' })
                vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>", { desc = 'go to todays note' })
                vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>", { desc = 'follow markdown link' })
                vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_templated_note<CR>", { desc = 'create new note' })
                vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>", { desc = 'show calendar' })
                vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", { desc = 'show all backlinks' })
                vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>", { desc = 'insert image link' })
                vim.keymap.set("n", "<leader>zt", "<cmd>Telekasten show_tags<CR>", { desc = 'shows all tags' })
                vim.keymap.set("n", "<leader>zv", "<cmd>Telekasten switch_vault<CR>", { desc = 'switch vaults' })
                vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>", { desc = 'insert markdown link when typing [[ in insert mode' })
                vim.keymap.set("i", "##", "<cmd>Telekasten show_tags<CR>", { desc = 'show tags after writting ## in insert mode' })
        end,
        },
}
