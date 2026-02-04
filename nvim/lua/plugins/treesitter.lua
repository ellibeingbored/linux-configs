return {
  "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    auto_install = true,
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
    opts = {
        highlight = { enable = true },
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
    require("nvim-treesitter.configs").setup(opts)
  end,
}
