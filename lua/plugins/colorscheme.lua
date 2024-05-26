return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = true,
        priority = 1000,
        opts = function()
            return {
                transparent = true,
            }
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        priority = 2000,
        opt = function()
            return {
                colorscheme = "kanagawa",
                transparent = true,
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = {
                        wave = {},
                        lotus = {},
                        dragon = {
                            syn = {
                                -- parameter = "yellow",
                            },
                        },
                        all = {},
                    },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "dragon", -- Load "wave" theme when 'background' option is not set
                background = { -- map the value of 'background' option to a theme
                    dark = "dragon", -- try "dragon" !
                    light = "lotus",
                },
            }
        end,
    },
    {
        "navarasu/onedark.nvim",
        lazy = true,
        opts = function()
            return {
                transparent = true,
            }
        end,
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        "jacoborus/tender.vim",
        lazy = true,
        opt = function()
            return {
                transparent = true,
            }
        end,
    },
    {
        "savq/melange-nvim",
        lazy = true,
        opt = function()
            return {
                transparent = true,
            }
        end,
    },
    {
        "rose-pine/neovim",
        opt = function()
            return {
                variant = "auto", -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = false,
                extend_background_behind_borders = true,
                enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true, -- Handle deprecated options automatically
                },
                styles = {
                    bold = true,
                    italic = true,
                    transparency = false,
                },
                groups = {
                    border = "muted",
                    link = "iris",
                    panel = "surface",

                    error = "love",
                    hint = "iris",
                    info = "foam",
                    note = "pine",
                    todo = "rose",
                    warn = "gold",

                    git_add = "foam",
                    git_change = "rose",
                    git_delete = "love",
                    git_dirty = "rose",
                    git_ignore = "muted",
                    git_merge = "iris",
                    git_rename = "pine",
                    git_stage = "iris",
                    git_text = "rose",
                    git_untracked = "subtle",

                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },

                highlight_groups = {
                    -- Comment = { fg = "foam" },
                    -- VertSplit = { fg = "muted", bg = "muted" },
                },
            }
        end,
    },
    {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
        opt = function()
            return {
                transparent = true,
            }
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = true,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- iknvert background for search, diffs, statuslines and errors
            contrast = "", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = true,
        },
        a,
    },
    {
        "savq/melange-nvim",
        lazy = true,
        opt = function()
            return {
                colorscheme = "kanagawa",
                transparent = true,
            }
        end,
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "rose-pine",
            -- transparent = true,
            -- background_colour = "#000000",
        },
    },
}
