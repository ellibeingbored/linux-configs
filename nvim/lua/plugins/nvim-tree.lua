return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 35,
			},
			renderer = {
				group_empty = true,
			},
			modified = {
				enable = true,
			},
			filters = {
				dotfiles = false,
			},
		})
	end,
}
