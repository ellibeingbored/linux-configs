return {
	{
		"mcncl/alabaster.nvim",
		lazy = false,
		priority = 1000,
	},
	{ "theJian/nvim-moonwalk", name = "moonwalk" },
	{ "e-q/okcolors.nvim", name = "okcolors" },
	-- {
	-- 	"f-person/auto-dark-mode.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local auto_dark_mode = require("auto-dark-mode")
	--
	-- 		auto_dark_mode.setup({
	-- 			update_interval = 1000,
	-- 			set_dark_mode = function()
	-- 				vim.api.nvim_set_option_value("background", "dark", {})
	-- 			end,
	-- 			set_light_mode = function()
	-- 				vim.api.nvim_set_option_value("background", "light", {})
	-- 			end,
	-- 		})
	-- 	end,
	-- },
}
