-- vim.keymap.set("n", "[d", function()
--     vim.diagnostic.goto_next()
-- end, opts)
-- vim.keymap.set("n", "]d", function()
--     vim.diagnostic.goto_next()
-- end, opts)
-- vim.keymap.set("n", "<Leader>vd", function()
--     vim.diagnostic.open_float()()
-- end, opts)
--

-- Function to set key mappings
local function set_keymaps()
    local opts = { noremap = true, silent = true }

    -- Navigate to the next diagnostic
    vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)

    -- Navigate to the previous diagnostic
    vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    -- Other key bindings can go here
    -- For example:
    -- vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
    -- vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
end

-- Call the function to set the key mappings
set_keymaps()
