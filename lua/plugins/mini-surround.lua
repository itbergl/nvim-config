return {
	"echasnovski/mini.surround",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		mappings = {
			add = "gs", -- Add surrounding in Normal and Visual modes
		},
	},
}
