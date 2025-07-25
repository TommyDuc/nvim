vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc='Open netrw'})
vim.keymap.set({'n', 'x'}, '<leader>py', '"+y', {desc = 'Copy to clipboard'})
vim.keymap.set({'n', 'x'}, '<leader>pp', '"+p', {desc = 'Paste clipboard text'})
vim.keymap.set("n", "<leader>o", ':put _<cr>', {desc = "'o' without insert mode"})
vim.keymap.set("n", "<leader>O", '-:put _<cr>', {desc = "'O' without insert mode"})
