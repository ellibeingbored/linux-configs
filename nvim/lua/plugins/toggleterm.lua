return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{ "<c-`>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
	},
	config = function()
		require("toggleterm").setup({
			size = 10,
			open_mapping = [[<F7>]],
			shading_factor = 2,
			float_opts = {
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})
	end,
}
