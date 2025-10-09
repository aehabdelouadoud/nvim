-- Useful for easily creating commands
-- local z_utils = require 'telescope._extensions.zoxide.utils'

-- init.lua:
return {
  'nvim-telescope/telescope.nvim',
  -- tag = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'jvgrootveld/telescope-zoxide',
    'nvim-lua/popup.nvim',
  },
  config = function()
    require('telescope').setup {
      defaults = {
        prompt_prefix = '  ', -- You can use any symbol you like here |    󰭎 
        selection_caret = '  ', -- Change the caret symbol here
        sorting_strategy = 'ascending', -- Sorting order
        layout_strategy = 'horizontal', -- Layout for displaying results
        layout_config = {
          height = 0.8, -- Height of the layout (percentage of window)
          width = 0.8, -- Width of the layout (percentage of window)
          prompt_position = 'top', -- Position the prompt at the top
        },
      },
      pickers = {
        colorscheme = {
          enable_preview = true, -- Enable preview for color scheme picker
        },
      },
      -- extensions = {
      --   zoxide = {
      --     prompt_title = '[ Walking on the shoulders of TJ ]',
      --     mappings = {
      --       default = {
      --         after_action = function(selection)
      --           print(
      --             'Update to (' .. selection.z_score .. ') ' .. selection.path
      --           )
      --         end,
      --       },
      --       ['<C-s>'] = {
      --         before_action = function(selection)
      --           print 'before C-s'
      --         end,
      --         action = function(selection)
      --           vim.cmd.edit(selection.path)
      --         end,
      --       },
      --       -- Opens the selected entry in a new split
      --       ['<C-q>'] = { action = z_utils.create_basic_command 'split' },
      --     },
      --   },
      -- },
    }
    require('telescope').load_extension 'zoxide'
  end,
  opts = {
    defaults = {
      prompt_prefix = '  ', -- You can use any symbol you like here |    󰭎 
      selection_caret = '  ', -- Change the caret symbol here
      sorting_strategy = 'ascending', -- Sorting order
      layout_strategy = 'horizontal', -- Layout for displaying results
      layout_config = {
        height = 0.8, -- Height of the layout (percentage of window)
        width = 0.8, -- Width of the layout (percentage of window)
        prompt_position = 'top', -- Position the prompt at the top
      },
    },
    pickers = {
      colorscheme = {
        enable_preview = true, -- Enable preview for color scheme picker
      },
    },
    -- extensions = {
    --   zoxide = {
    --     prompt_title = '[ Walking on the shoulders of TJ ]',
    --     mappings = {
    --       default = {
    --         after_action = function(selection)
    --           print(
    --             'Update to (' .. selection.z_score .. ') ' .. selection.path
    --           )
    --         end,
    --       },
    --       ['<C-s>'] = {
    --         before_action = function(selection)
    --           print 'before C-s'
    --         end,
    --         action = function(selection)
    --           vim.cmd.edit(selection.path)
    --         end,
    --       },
    --       -- Opens the selected entry in a new split
    --       ['<C-q>'] = { action = z_utils.create_basic_command 'split' },
    --     },
    --   },
    -- },
  },
}
