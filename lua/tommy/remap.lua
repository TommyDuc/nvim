vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc='Open netrw'})
vim.keymap.set({'n', 'x'}, '<leader>py', '"+y', {desc = 'Copy to clipboard'})
vim.keymap.set({'n', 'x'}, '<leader>pp', '"+p', {desc = 'Paste clipboard text'})
vim.keymap.set("n", "<leader>pf", function()
    local path = vim.fn.expand('%:p')
    local line = vim.fn.line('.')
    local location = path .. ':' .. line
    vim.fn.setreg('+', location)
    vim.notify('Copied: ' .. location, vim.log.levels.INFO)
end, {desc = 'Yank file path:line to clipboard'})
vim.keymap.set("n", "<leader>o", ':put _<cr>', {desc = "'o' without insert mode"})
vim.keymap.set("n", "<leader>O", '-:put _<cr>', {desc = "'O' without insert mode"})
