return {
  'hadronized/hop.nvim',
  config = function()
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection
    hop.setup()
    vim.keymap.set('', '<leader>l', '<cmd>HopLine<cr>')
    vim.keymap.set('', '<leader>cc', '<cmd>HopChar2<cr>')
		vim.keymap.set('', '<leader>c', '<cmd>HopChar1<cr>')

  end
}
