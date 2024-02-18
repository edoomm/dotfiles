local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})

vim.keymap.set('n', '<leader>ps', builtin.git_status, {})
vim.keymap.set('n', '<leader>pc', builtin.git_commits, {})

-- TODO Not working
vim.keymap.set('n', '<leader>pg', function()
	builtin.grep_string({ search = vim.fn.input("Grep string > ") });
end)
