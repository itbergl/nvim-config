return {
	"folke/flash.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("flash").setup({
			modes = {
				char = {
					enabled = false,
				},
			},
		})
		vim.keymap.set({ "n", "x", "o" }, "s", function()
			require("flash").jump()
		end)
		vim.keymap.set({ "n", "x", "o" }, "<A-s>", function()
			require("flash").treesitter()
		end)
	end,
}
