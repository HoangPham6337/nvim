local group = vim.api.nvim_create_augroup("AutoSaveOnFocusLost", { clear = true })
vim.api.nvim_create_autocmd({ "FocusLost", "WinLeave" }, {
	group = group,
	pattern = "*",
	command = "wa",
})
