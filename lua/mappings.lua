vim.api.nvim_set_keymap('n', '<F2>', ':!clang++ --debug -Wall -std=c++20 -DONPC % -o main && ./main<CR>', {noremap = true})
vim.keymap.set('n', '<leader>sv', ':vsplit<cr>')
vim.keymap.set('n', '<leader>sh', ':split<cr>')
function run_command()
    vim.api.nvim_command("silent exec '.!inkscape-figures create \"'..getline('.')..'\" \""..vim.fn.expand('%:p:h')..'/figures/"\'')
end

-- nnoremap <space><F3> :w<CR>:!pdflatex %<CR>
vim.api.nvim_set_keymap('n', '<leader><F3>', ':!pdflatex %<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-f>', '<cmd>lua run_command()<CR>', {noremap = true})
function latex_edit()
    local cmd = string.format("silent exec '!inkscape-figures edit \"%s/figures/\" > /dev/null 2>&1 &'", vim.fn.expand('%:p:h'))
    vim.api.nvim_command(cmd)
end

vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua latex_edit()<CR>', { noremap = true, silent = true })
