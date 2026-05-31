vim.api.nvim_create_autocmd("FileType", {
	pattern = { "svelte", "python", "javascript", "typescript", "typescriptreact", "rust", "go", "c", "c++" },
	callback = function()
		vim.treesitter.start()
	end,
})
