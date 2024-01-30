vim.o.mouse = "a"
vim.o.wrap = false
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

-- Function to autoconfigure indentation of C file to
-- conform the PSR-2 standard
local function set_indentation(spaces)
	vim.opt.shiftwidth = spaces
	vim.opt.tabstop = spaces
	vim.opt.softtabstop = spaces
	vim.opt.expandtab = true
end

-- Auto detect C and Cpp files
vim.api.nvim_create_autocmd({ "Bufread", "BufNewFile" }, {
	pattern = { "*.c", "*.cpp", "*.h" ,"*.java" },
	callback = function()
		set_indentation(2)
	end,
})
