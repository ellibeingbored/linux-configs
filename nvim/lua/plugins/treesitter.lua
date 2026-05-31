return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	auto_install = true,
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
	opts = {
		highlight = { enable = false },
		indent = { enable = true },
		ensure_installed = {
			"bash",
			"c",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"python",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
		},
	},
	config = function(_, opts)
		require("nvim-treesitter").setup(opts)
	end,
}
