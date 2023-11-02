return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			disabled_filetypes = { statusline = { "packer", "NvimTree" } },
		},
	},
}
