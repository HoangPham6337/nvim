-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tab configuration
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.mouse = 'a'

-- Function to show relative line only in normal mode
vim.api.nvim_create_augroup("NumToggle", { clear = true})
vim.api.nvim_create_autocmd(
	{ 
		"BufEnter", 
		"FocusGained", 
		"InsertLeave", 
		"WinEnter" 
	},
	{ 
		pattern = "*", 
		command = "set relativenumber",
		group = "NumToggle" 
	}
)
vim.api.nvim_create_autocmd(
	{ 
		"BufLeave", 
		"FocusLost", 
		"InsertEnter", 
		"WinLeave" 
	},
	{ 
		pattern = "*", 
		command = "set norelativenumber", 
		group = "NumToggle"
	}
)
