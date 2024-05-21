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
            }
        end,
    },
    { "ellisonleao/gruvbox.nvim" },
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
        lazy = true,
        opt = function()
            return {
                transparent = true,
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
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = "", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = true,
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
            -- transparent = true,
            -- background_colour = "#000000",
        },
    },
}
