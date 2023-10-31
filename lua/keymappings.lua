local set = vim.keymap.set

set({ "v", "n" }, "<leader>q", "<CMD>q<CR>", { desc = "quit" })
set("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "Lazy Nvim" })
set("n", "<C-u>", "<C-u>zz")
set("n", "<C-d>", "<C-d>zz")

-- navigate windows
set({ "v", "n" }, "<C-j>", "<C-w>j")
set({ "v", "n" }, "<C-k>", "<C-w>k")
set({ "v", "n" }, "<C-h>", "<C-w>h")
set({ "v", "n" }, "<C-l>", "<C-w>l")

-- move <C-a> from tmux togglekey
set({ "v", "n" }, "<C-i>", "<C-a>")
set({ "v", "n" }, "g<C-i>", "g<C-a>")

-- Navigate buffers
set("n", "]w", ":bnext<CR>", { desc = "Next Buffer" })
set("n", "[w", ":bprevious<CR>", { desc = "Next Buffer" })

-- Move text up and down
set("n", "gj", ":m .+1<CR>==", { silent = true, desc = "move text up" })
set("n", "gk", ":m .-2<CR>==", { silent = true, desc = "move text down" })

-- Resize with arrows
set("n", "<C-DOWN>", ":resize -2<CR>")
set("n", "<C-UP>", ":resize +2<CR>")
set("n", "<C-LEFT>", ":vertical resize -2<CR>")
set("n", "<C-RIGHT>", ":vertical resize +2<CR>")

-- moving line up/down
-- clear last search on esc
set("n", "<ESC>", "<CMD>noh<CR>", { noremap = true, silent = true })

-- jump to next character (useful for closing pairs)
set("i", "<C-l>", "<C-o>a")

set("n", "[q", "<CMD>cprev<CR>", { desc = "Previous Quickfix" })
set("n", "]q", "<CMD>cnext<CR>", { desc = "Next Quickfix" })

set("n", "[c", "<CMD>colder<CR>", { desc = "quickfix older" })
set("n", "<leader>c", function()
	vim.cmd("copen")
end, { desc = "copen" })
set("n", "]c", "<CMD>cnewer<CR>", { desc = "quickfix newer" })
