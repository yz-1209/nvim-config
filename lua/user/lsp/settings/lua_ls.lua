return {
    Lua = {
        diagnostics = {
            globals = { "vim", "hs" },
        },
        workspace = {
            library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
                ["/Applications/Hammerspoon.app/Contents/Resources/extensions/hs/"] = true,
            },
        },
    },
}
