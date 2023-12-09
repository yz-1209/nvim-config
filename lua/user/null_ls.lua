local ok, null_ls = pcall(require, "null-ls")
if not ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup{
    sources = {
        formatting.black,
        -- diagnostics.flake8.with({
        --     extra_args = {"--max-line-length", "88"},
        -- }),
    }
}
