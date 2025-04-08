return {

{
'MeanderingProgrammer/render-markdown.nvim',
dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
---@module 'render-markdown'
---@type render.md.UserConfig
opts = {},
config = function ()
        require("render-markdown").setup({
                enable = true,
                render_modes = { 'n', },
                file_types = { 'markdown', 'telekasten' },
                heading = {
                        enabled = true,
                        sign = false,
                        signs = { '󰫎 ' },
                        icons = { '', '', '', '', '', '' },
                        -- icons = { '󰲡  ', '󰲣  ', '󰲥  ', '󰲧  ', '󰲩  ', '󰲫  ' },
                        position = 'inline', -- right, inline, overlay
                        width = 'block', -- block, full
                        backgrounds = {
                            'RenderMarkdownH1', --red
                            'RenderMarkdownH2', --orange
                            'RenderMarkdownH3', --yellow
                            'RenderMarkdownH4', --green
                            'RenderMarkdownH5', --blue
                            'RenderMarkdownH6', --magenta
                        },
                },
                paragraph = {
                        enabled = true,
                        left_margin = 0,
                        min_width = 0,
                },
                code = {
                        enabled = true,
                        sign = false,
                        style = 'full', -- none, normal, language, full
                        position = 'left',
                        language_icon = true,
                        language_name = true,
                        disable_background = { 'diff' },
                        width = 'full', -- full, block
                        highlight = 'RenderMarkdownCode',
                },
                dash = {
                        enabled = true,
                        icon = '─',
                        width = 'full',
                        highlight = 'RenderMarkdownDash',
                },
                bullet = {
                        enabled = true,
                        icons = { '●', '○', '◆', '◇' },
                        ----highlight = 'RenderMarkdownH1',
                        highlight = 'RenderMarkdownBullet',
                        scope_highlight = nil,
                },
                checkbox = {
                        enabled = true,
                        unchecked = {
                            icon = '󰄱 ',
                            highlight = 'RenderMarkdownUnchecked',
                            scope_highlight = nil,
                        },
                        checked = {
                            icon = '󰱒 ',
                            highlight = 'RenderMarkdownChecked',
                            scope_highlight = nil,
                        },
                        custom = {
                            todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
                        },
                },
                quote = {
                        enabled = true,
                        --icon = '',
                        icon = '▋',
                        highlight = 'RenderMarkdownQuote',
                },
                pipe_table = {
                        enabled = true,
                        preset = 'none', -- heavy, double, round, none
                        style = 'full', -- none, normal, full
                        cell = 'padded', -- overlay, raw, padded, trimmed
                        padding = 1,
                        min_width = 12,
                        border = {
                            '┌', '┬', '┐',
                            '├', '┼', '┤',
                            '└', '┴', '┘',
                            '│', '─',
                        },
                        alignment_indicator = '─',
                        head = 'RenderMarkdownTableHead',
                        row = 'RenderMarkdownTableRow',
                        filler = 'RenderMarkdownTableFill',
                },
                -- | quote_icon | optional override for quote.icon value for individual callout       |
                callout = {
                        -- github
                        note      = { raw = '[!NOTE]',      rendered = '󰋽 Note',      highlight = 'RenderMarkdownInfo',    category = 'github'   },
                        tip       = { raw = '[!TIP]',       rendered = '󰌶 Tip',       highlight = 'RenderMarkdownSuccess', category = 'github'   },
                        important = { raw = '[!IMPORTANT]', rendered = '󰅾 Important', highlight = 'RenderMarkdownHint',    category = 'github'   },
                        warning   = { raw = '[!WARNING]',   rendered = '󰀪 Warning',   highlight = 'RenderMarkdownWarn',    category = 'github'   },
                        caution   = { raw = '[!CAUTION]',   rendered = '󰳦 Caution',   highlight = 'RenderMarkdownError',   category = 'github'   },
                        -- Obsidian: https://help.obsidian.md/Editing+and+formatting/Callouts
                },
                link = {
                        enabled = true,
                        footnote = {
                            enabled = true,
                            superscript = true,
                            prefix = '',
                            suffix = '',
                        },
                        image = '󰥶 ',
                        email = '󰀓 ',
                        hyperlink = '󰌹 ',
                        highlight = 'RenderMarkdownLink',
                        wiki = {
                            icon = '󱗖 ',
                            body = function()
                                return nil
                            end,
                            highlight = 'RenderMarkdownWikiLink',
                        },
                        -- | highlight | optional highlight for 'icon', uses fallback highlight if empty |
                        custom = {
                            web = { pattern = '^http', icon = '󰖟 ' },
                            discord = { pattern = 'discord%.com', icon = '󰙯 ' },
                            github = { pattern = 'github%.com', icon = '󰊤 ' },
                            gitlab = { pattern = 'gitlab%.com', icon = '󰮠 ' },
                            google = { pattern = 'google%.com', icon = '󰊭 ' },
                            neovim = { pattern = 'neovim%.io', icon = ' ' },
                            reddit = { pattern = 'reddit%.com', icon = '󰑍 ' },
                            stackoverflow = { pattern = 'stackoverflow%.com', icon = '󰓌 ' },
                            wikipedia = { pattern = 'wikipedia%.org', icon = '󰖬 ' },
                            youtube = { pattern = 'youtube%.com', icon = '󰗃 ' },
                        },
                },
                indent = {
                        enabled = false,
                        per_level = 2,
                        skip_level = 1,
                        skip_heading = false,
                        icon = '▎',
                        highlight = 'RenderMarkdownIndent',
                },
                inline_highlight = {
                        enabled = true,
                        highlight = 'RenderMarkdownH2Bg'
                }
                })
end,
}

}
