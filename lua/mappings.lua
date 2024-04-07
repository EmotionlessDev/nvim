vim.api.nvim_set_keymap('n', '<F2>', ':!clang++ --debug -Wall -std=c++20 -DONPC % -o main && ./main<CR>', {noremap = true})
