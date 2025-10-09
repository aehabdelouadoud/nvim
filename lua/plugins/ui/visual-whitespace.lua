return {
    'mcauley-penney/visual-whitespace.nvim',
    config = true,
    event = 'ModeChanged *:[vV\22]', -- optionally, lazy load on entering visual mode
    opts = {
        highlight = { link = "Visual", default = true },
        ignore = {
            filetypes = {
                'oil',
                'neotree',
                'lazy',
                'markdown',
                'checkhealth' ,
            },
            buftypes = {}, -- NOTE: What's the diffrence btw buftype and filetype?
        },
    },
}
