local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>pl',
	function()
		builtin.live_grep({prompt_title = 'Live Grep', grep_open_files = true})
	end
)
vim.keymap.set('n', '<leader>ps',
	function()
		builtin.grep_string({ search=vim.fn.input("Grep: ") })
	end
)
