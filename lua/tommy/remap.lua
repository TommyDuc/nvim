vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc='Open netrw'})
vim.keymap.set({'n', 'x'}, '<leader>py', '"+y', {desc = 'Copy to clipboard'})
vim.keymap.set({'n', 'x'}, '<leader>pp', '"+p', {desc = 'Paste clipboard text'})
vim.keymap.set({"n", "x"}, "<leader>pf", function()
    local path = vim.fn.expand('%:p')
    vim.fn.setreg('+', path)
    vim.notify('Copied: ' .. path, vim.log.levels.INFO)
end, {desc = 'Yank file path to clipboard'})
vim.keymap.set("n", "<leader>pF", function()
    local path = vim.fn.expand('%:p')
    local line = vim.fn.line('.')
    local location = path .. ':' .. line
    vim.fn.setreg('+', location)
    vim.notify('Copied: ' .. location, vim.log.levels.INFO)
end, {desc = 'Yank file path:line to clipboard'})
vim.keymap.set("x", "<leader>pF", function()
    local path = vim.fn.expand('%:p')
    local line1 = vim.fn.line('v')
    local line2 = vim.fn.line('.')
    -- Ensure line1 is always the smaller number
    if line1 > line2 then
        line1, line2 = line2, line1
    end
    local location = path .. ':' .. line1 .. '-' .. line2
    vim.fn.setreg('+', location)
    vim.notify('Copied: ' .. location, vim.log.levels.INFO)
end, {desc = 'Yank file path:line1-line2 to clipboard'})
vim.keymap.set("n", "<leader>o", ':put _<cr>', {desc = "'o' without insert mode"})
vim.keymap.set("n", "<leader>O", '-:put _<cr>', {desc = "'O' without insert mode"})
