return {
    'nvim-mini/mini.nvim',
    version = '*',
    config = function ()
        require('mini.align').setup({
            mappings = {
                start = 'ga',
                start_with_preview = 'gA',
            }
        })
    end
}
