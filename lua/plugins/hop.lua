return {
  'hadronized/hop.nvim',
  config = function()
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection
    hop.setup()
    vim.keymap.set('', '<leader>c', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
    end, { remap = true })
    vim.keymap.set('', '<leader>l', '<cmd>HopLine<cr>')
    vim.keymap.set('', '<leader>cc', '<cmd>HopChar2<cr>')
  end
}
