require('mini.diff').setup({
	mappings = {
		apply = nil,
		reset = nil,
		textobject = nil,

		goto_first = '<Leader>NH',
		goto_prev = '<Leader>Nh',
		goto_next = '<Leader>nh',
		goto_last = '<Leader>nH',
	},
})

require('mini.cursorword').setup({
	delay = 20,
})

require('mini.pairs').setup()

require('mini.bracketed').setup()

require('mini.trailspace').setup()

require('mini.notify').setup()

require('mini.tabline').setup()

require('mini.comment').setup()

require('mini.jump').setup({
	delay = {
		highlight = 100,
		idle_stop = 5000,
	}
})

require('mini.map').setup()
vim.keymap.set('n', '<Leader>mc', MiniMap.close)
vim.keymap.set('n', '<Leader>mf', MiniMap.toggle_focus)
vim.keymap.set('n', '<Leader>mo', MiniMap.open)
vim.keymap.set('n', '<Leader>mr', MiniMap.refresh)
vim.keymap.set('n', '<Leader>ms', MiniMap.toggle_side)
vim.keymap.set('n', '<Leader>mt', MiniMap.toggle)

require('mini.indentscope').setup({
	options = {
		indent_at_cursor = true,
		try_as_border = true,
	},
})
require('mini.indentscope').gen_animation.none()

require('mini.splitjoin').setup({
	mappings = {
		toggle = 'gS',
		split = '',
		join = '',
	},
})

require('mini.surround').setup({
	mappings = {
		add = 'sa', -- Add surrounding in Normal and Visual modes
		delete = 'sd', -- Delete surrounding
		find = 'sf', -- Find surrounding (to the right)
		find_left = 'sF', -- Find surrounding (to the left)
		highlight = 'sh', -- Highlight surrounding
		replace = 'sr', -- Replace surrounding
		update_n_lines = 'sn', -- Update `n_lines`
		suffix_last = 'l', -- Suffix to search with "prev" method
		suffix_next = 'n', -- Suffix to search with "next" method
	},
})
