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

require('mini.completion').setup()

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
