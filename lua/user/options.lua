local options = {
    backup = false,                          -- make a backup before overwriting a file
    clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    cmdheight = 2,                           -- number of screen lines to use for the command-line
    completeopt = { "menuone", "noselect" }, -- use the popup menu also when there is only one match; do not select a match in th menu, force the user to select one
    conceallevel = 0,                        -- make `` visible in markdown files
    fileencoding = "utf-8",                  -- file-content encoding for the current buffer
    hlsearch = true,                         -- highlight all matches on previous search pattern
    ignorecase = true,                       -- ignore case in search patterns
    mouse = "a",                             -- allow the mouse to be used in neovim
    pumheight = 10,                          -- maximum number of items to show in the popup menu
    showmode = true,                        -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                         -- always show tabs
    smartcase = true,                        -- override the 'ignorecase' option if the search pattern contains upper case characters
    smartindent = true,                      -- make indenting smarter again
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = false,                        -- use a swapfile for the buffer
    writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    termguicolors = true,                    -- set term gui colors (most terminals support this)
    timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                         -- when on, Vim automatically saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on buffer read.
    updatetime = 300,                        -- faster completion (4000ms default)
    expandtab = true,                        -- use the appropriate number of spaces to insert a <Tab>.
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    tabstop = 4,                             -- insert 4 spaces for a tab
    cursorline = true,                       -- highlight the current line
    number = true,                           -- set numbered lines
    relativenumber = false,                  -- set relative numbered lines
    numberwidth = 4,                         -- set number column width to 2 {default 4}
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    wrap = false,                            -- display lines as one long line
    scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
    sidescrolloff = 8,                       -- minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- vim.opt.shortmess:append "c" -- don't give |ins-completion-menu| messages

-- vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
