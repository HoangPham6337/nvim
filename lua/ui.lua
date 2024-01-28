vim.o.mouse = "a"
vim.o.wrap = true
vim.wo.number = true
vim.wo.relativenumber = true

-- Function to show relative line only in normal mode
vim.api.nvim_create_augroup("NumToggle", { clear = true })
vim.api.nvim_create_autocmd({
	"BufEnter",
	"FocusGained",
	"InsertLeave",
	"WinEnter",
}, {
	pattern = "*",
	command = "set relativenumber",
	group = "NumToggle",
})
vim.api.nvim_create_autocmd({
	"BufLeave",
	"FocusLost",
	"InsertEnter",
	"WinLeave",
}, {
	pattern = "*",
	command = "set norelativenumber",
	group = "NumToggle",
})
