vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)

vim.keymap.set("n", "<leader>br", function()
	vim.cmd("%bd|e#")
end)

vim.keymap.set("n", "<leader>bc", vim.cmd.bwipeout)

-- Plugins

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
