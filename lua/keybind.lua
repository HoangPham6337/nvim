-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tab configuration
vim.o.shiftwidth = 4
vim.o.tabstop = 4

local setKeymap = vim.keymap.set
local options = { noremap = true, silent = true }

-- Select all
setKeymap("n", "<C-A>", "ggVG", options)

-- Comment configuration
-- setKeymap("n", "<C-_>", ":CommentToggle<CR>", options)
-- setKeymap("v", "<C-_>", ":CommentToggle<CR>", options)
setKeymap("n", "<C-k>", ":CommentToggle<CR>", options)
setKeymap("v", "<C-k>", ":CommentToggle<CR>", options)


-- Yank to clipboard
setKeymap("n", "yy", ":y+<CR>", options)
setKeymap("v", "yy", ":y+<CR>", options)

-- nvim-lspconfig
-- Check lsp-config.lua

-- telescope
-- Check telescope.lua

-- Neotree
-- Check neo-tree.lua

-- lsp-lines
-- setKeymap("n", "<leader>l", require("lsp_lines").toggle)
-- setKeymap("v", "<leader>l", require("lsp_lines").toggle)

-- Toggle file manager
setKeymap("n", "-", "<CMD>Oil<CR>")

-- Toogle terminal
setKeymap("t", "<esc>", [[<C-\><C-n>]], { silent = true })

-- Create new windows
setKeymap("n", "<C-N>", ":vsplit<CR><C-w>l", options)
setKeymap("n", "<C-L>", ":split<CR><C-w>l", options)
setKeymap("n", "<C-M>", ":close<CR>", options)

-- Resize windows
setKeymap("n", "<C-Left>", "<C-w><", options)
setKeymap("n", "<C-Right>", "<C-w>>", options)

-- Cycle between windows
setKeymap("n", "<S-Tab>", "<C-w>w", options)

-- File function
setKeymap("n", "<leader>gf", vim.lsp.buf.format, options)

-- Refactor code
setKeymap("n", "<F2>", ":IncRename ")

-- Save
setKeymap("n", "<C-S>", ":w<CR>", { noremap = true })
