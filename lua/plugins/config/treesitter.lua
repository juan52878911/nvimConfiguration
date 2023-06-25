local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)

treesitter.setup {
    ensure_installed = { "javascript", "python", "cpp", "lua", "typescript", "javascript", "markdown" },
    sync_install = true, -- List of parsers to ignore installing
    -- List of parsers to ignore installing
    ignore_install = { "" },
    highlight = {
        enable = true,    -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,

    },
    indent = { enable = true, disable = { "yaml" } },
    autotag = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = false,
        max_file_lines = nil,
        colors = {
            "#ff0000",
            "#ff8000",
            "#ffff00",
            "#00ff00",
            "#00ffff",
            "#0000ff",
            "#ff00ff",
        },
    }
}
