return {
	"folke/flash.nvim",
	opts = {},
    config = function()
        vim.keymap.set({"n", "x", "o"}, "s", function() require("flash").jump() end)
        vim.keymap.set({"n", "x", "o"}, "<A-s>", function() require("flash").treesitter()  end )
    end

}
