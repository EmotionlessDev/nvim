return {
  'romgrk/barbar.nvim',
  config = function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<C-.>', '<Cmd>BufferNext<CR>', opts)
    map('n', '<C-t>', '<Cmd>tabnew<cr>', opts)
    map('n', '<C-q>', '<Cmd>BufferClose<cr>', opts)
    require("barbar").setup({})
  end
}
