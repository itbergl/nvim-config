return {
	"akinsho/bufferline.nvim",

	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
    -- stylua: ignore
    close_command = function(n) require("mini.bufremove").delete(n, false) end,
			-- mode = "tabs",
			-- separator_style = "slant",
			offsets = {
				{ filetype = "NvimTree", highlight = "Directory", text = "File Explorer", text_align = "center" },
			},
		},
	},
}
