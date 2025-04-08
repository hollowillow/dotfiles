return {

{
'nvimdev/dashboard-nvim',
dependencies = { 'nvim-tree/nvim-web-devicons' },
event = 'VimEnter',
config = function()
        require('dashboard').setup {

        -- config --
        theme = 'doom',
        config = {
        week_header = { 
                enable = true,
        },
        vertical_center = true,

        center = {
                { action = 'Telescope find_files',                           desc = " Find File",       icon = " ", key = "f", key_hl = 'Number' },
                { action = 'enew | startinsert',                             desc = " New File",        icon = " ", key = "n", key_hl = 'Number' },
                { action = 'Telescope oldfiles',                             desc = " Recent Files",    icon = " ", key = "r", key_hl = 'Number' },
                { action = 'Telescope live_grep',                            desc = " Find Text",       icon = " ", key = "g", key_hl = 'Number' },
                { action = 'Telekasten new_templated_note';                  desc = " New Note",        icon = " ", key = "z", key_hl = 'Number' },
                { action = 'edit $HOME/.config/nvim',                        desc = " Config",          icon = " ", key = "c", key_hl = 'Number' },
                -- { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
                { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l", key_hl = 'Number' },
                { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q", key_hl = 'Number' },
        },

        footer = function()
                local stats = require("lazy").stats()
                local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,

        },
        -- config --

        }
end,
},

}
