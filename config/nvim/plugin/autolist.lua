if not vim.g.loaded_autolist then
  return
end

require("autolist").setup()

vim.keymap.set("i", "<CR>", "<CR><cmd>AutolistNewBullet<cr>")
vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<cr>")
vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
vim.keymap.set("n", "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>")
vim.keymap.set("n", "<leader>ar", "<cmd>AutolistRecalculate<cr>")

-- functions to recalculate list on edit
vim.keymap.set("n", ">>", ">><cmd>AutolistRecalculate<cr>")
vim.keymap.set("n", "<<", "<<<cmd>AutolistRecalculate<cr>")
vim.keymap.set("n", "dd", "dd<cmd>AutolistRecalculate<cr>")
vim.keymap.set("v", "d", "d<cmd>AutolistRecalculate<cr>")
