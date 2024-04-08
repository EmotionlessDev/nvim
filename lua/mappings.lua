vim.api.nvim_set_keymap('n', '<F2>', ':!clang++ --debug -Wall -std=c++20 -DONPC % -o main && ./main<CR>', {noremap = true})
vim.keymap.set('n', '<leader>sv', ':vsplit<cr>')
vim.keymap.set('n', '<leader>sh', ':split<cr>')
vim.api.nvim_set_keymap('i', '<C-f>', '<Esc>:silent exec \'.!inkscape-figures create "\'.vim.fn.getline(\'.\').\'" "\'..vim.b.root..\'/figures/"\'<CR><CR>:w<CR>', { silent = true })
