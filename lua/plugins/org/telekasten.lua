return {
  'renerocksai/telekasten.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  opts = {
    home = vim.fn.expand '~/org/notes/', -- Notes dir
  },
}
