-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tab configuration
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- Select all
vim.keymap.set("n", "<C-A>", "ggVG", { noremap = true, silent = true, desc = "Select all" })

-- Comment configuration
vim.keymap.set("n", "gcc", ":CommentToggle<CR>", { noremap = true, silent = true, desc = "Toggle comment" })
vim.keymap.set("v", "gcc", ":CommentToggle<CR>", { noremap = true, silent = true, desc = "Toggle comment" })

-- Yank to clipboard
vim.keymap.set("n", "yy", ":y+<CR>", { noremap = true, silent = true, desc = "Copy to clipboard" })
vim.keymap.set("v", "yy", ":y+<CR>", { noremap = true, silent = true, desc = "Copy selection to clipboard" })

-- Create new windows
vim.keymap.set("n", "<C-N>", ":vsplit<CR><C-w>l", { noremap = true, silent = true, desc = "New window vertical" })
vim.keymap.set("n", "<C-L>", ":split<CR><C-w>l", { noremap = true, silent = true, desc = "New window horizontal" })
vim.keymap.set("n", "<C-M>", ":close<CR>", { noremap = true, silent = true, desc = "Close window" })

-- Resize windows
vim.keymap.set("n", "<C-Left>", "<C-w><", { noremap = true, silent = true, desc = "Decrease window size" })
vim.keymap.set("n", "<C-Right>", "<C-w>>", { noremap = true, silent = true, desc = "Increase windows size" })

-- Cycle between windows
vim.keymap.set("n", "<S-Tab>", "<C-w>w", { noremap = true, silent = true, desc = "Cycle between window" })

-- Refactor code
-- vim.keymap.set("n", "<F2>", ":lua vim.lsp.buf.rename() <CR>", { desc = "Rename variable"})
vim.keymap.set("n", "<F2>", ":IncRename ")

-- Save
vim.keymap.set("n", "<C-S>", ":w<CR>", { noremap = true, desc = "Save file" })
