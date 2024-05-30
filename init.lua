-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Customize diagnostic signs and virtual text
vim.diagnostic.config({
    virtual_text = {
        prefix = "●", -- Could be '●', '▎', 'x'
    },
    signs = true,
    underline = true,
    update_in_insert = false,
})

-- Define diagnostic signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.cmd("set list!")
vim.cmd("highlight ColorColumn guibg=Gray")
-- vim.go.background = "light"
-- init.lua
vim.cmd([[
    highlight CursorLine guibg=#282a36 guifg=NONE
    set cursorline
]])

require("rose-pine").setup({
    dark_variant = "main",
    disable_background = true, -- Make the background transparent
    groups = {
        background = "none", -- Transparent background
        panel = "none", -- Transparent panel
    },
    highlight_groups = {
        ColorColumn = { bg = "#3c2f2f" }, -- Brownish color column
        CursorLine = { bg = "#3c2f2f" }, -- Brownish cursor line
        CursorLineNr = { fg = "#a67c52", bg = "none" }, -- Brown cursor line number
        LineNr = { fg = "#a67c52" }, -- Brown line numbers
        Normal = { bg = "none" }, -- Transparent normal background
        NormalFloat = { bg = "none" }, -- Transparent floating windows
        SignColumn = { bg = "none" }, -- Transparent sign column
        VertSplit = { fg = "#a67c52", bg = "none" }, -- Brown vertical split
    },
    colors = {
        rose = "#a67c52", -- Brownish rose color
        love = "#a67c52", -- Brownish love color
        gold = "#a67c52", -- Brownish gold color
        pine = "#a67c52", -- Brownish pine color
        foam = "#a67c52", -- Brownish foam color
        iris = "#a67c52", -- Brownish iris color
    },
})

-- auto-remove unused imports when saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.tsx", "*.ts" },
    callback = function()
        vim.lsp.buf.code_action({
            apply = true,
            context = {
                only = { "source.removeUnused.ts" },
                diagnostics = vim.lsp.diagnostic.get_all(),
            },
        })
    end,
})
