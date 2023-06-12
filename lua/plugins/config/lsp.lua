require("mason").setup();
require("mason-lspconfig").setup({
    ensure_installed = {
        "tsserver",
        "lua_ls",
        "eslint",
        "dockerls",
        "docker_compose_language_service",
        -- "prettier",
        "bashls",
    },
});

local on_attach = function()
    vim.keymap.set(
        "n",
        "<leader>rn",
        vim.lsp.buf.rename,
        {}
    )
    vim.keymap.set(
        "n",
        "<leader>ca",
        vim.lsp.buf.code_action,
        {}
    )
    vim.keymap.set(
        "n",
        "<leader>gd",
        vim.lsp.buf.definition,
        {}
    )
    vim.keymap.set(
        "n",
        "<leader>gi",
        vim.lsp.buf.implementation,
        {}
    )
    vim.keymap.set(
        "n",
        "<leader>gr",
        vim.lsp.buf.references,
        {}
    )
    vim.keymap.set(
        "n",
        "<leader>h",
        vim.lsp.buf.hover,
        {}
    )
end

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup {
    on_attach = on_attach
}

lspconfig.lua_ls.setup {
    on_attach = on_attach
}

lspconfig.eslint.setup {
    on_attach = on_attach
}

-- prettier
local formatter = require('formatter')

-- Configure Prettier as a formatter
local prettier = {
  command = 'prettier',
  args = { '--stdin-filepath', '%:p' },
  stdin = true
}

formatter.setup({
    filetype = {
        javascript = { prettier },
        typescript = { prettier },
        javascriptreact = { prettier },
        typescriptreact = { prettier },
        css = { prettier },
        scss = { prettier },
        json = { prettier },
        html = { prettier },
        yaml = { prettier },
        markdown = { prettier }
    }
})
