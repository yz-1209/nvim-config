local servers = {
    "lua_ls",
    "pyright",
    "jsonls",
    "gopls",
    "rust_analyzer",
}

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
})
