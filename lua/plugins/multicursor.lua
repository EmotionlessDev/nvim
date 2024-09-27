return {
  "smoka7/multicursors.nvim",
  event = "VeryLazy",
  dependencies = {
    'nvimtools/hydra.nvim',
  },
  opts = {},
  cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
  keys = {
    {
      mode = { 'v', 'n' },
      '<Leader>m',
      function() vim.cmd('MCstart') end, -- Вызов команды MCstart по нажатию <Leader>m
      desc = 'Create a selection for selected text or word under the cursor',
    },
  },
}
