local lspconfig = require("lspconfig")

-- TypeScript LSP Configuration
lspconfig.tsserver.setup({
    settings = {
        typescript = {
            workspace = {
                checkThirdParty = false,
            },
            codeLens = {
                enable = true,
            },
            completion = {
                callSnippet = "Replace",
            },
        },
        javascript = {},
    },
    init_options = require("nvim-lsp-ts-utils").init_options,
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")

        ts_utils.setup({
            debug = false,
            disable_commands = false,
            enable_import_on_completion = false,
            import_all_timeout = 5000,
            import_all_priorities = {
                same_file = 1,
                local_files = 2,
                buffer_content = 3,
                buffers = 4,
            },
            import_all_scan_buffers = 100,
            import_all_select_source = false,
            always_organize_imports = true,
            filter_out_diagnostics_by_severity = {},
            filter_out_diagnostics_by_code = {},
            auto_inlay_hints = true,
            inlay_hints_highlight = "Comment",
            inlay_hints_priority = 200,
            inlay_hints_throttle = 150,
            inlay_hints_format = {
                Type = {},
                Parameter = {},
                Enum = {},
            },
            update_imports_on_move = false,
            require_confirmation_on_move = false,
            watch_dir = nil,
        })

        ts_utils.setup_client(client)

        local opts = { silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
    end,
})

-- Go LSP Configuration
lspconfig.gopls.setup({
    on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true }

        -- Diagnostic navigation
        vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "<leader>dn",
            "<cmd>lua vim.diagnostic.goto_next({ float = false })<CR>",
            opts
        )
        vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "<leader>dp",
            "<cmd>lua vim.diagnostic.goto_prev({ float = false })<CR>",
            opts
        )

        -- Go-specific key mappings
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    end,
})
