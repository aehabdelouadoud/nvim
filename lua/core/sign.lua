local sign = vim.fn.sign_define

-- Dap
sign('DapBreakpoint',         { text = '', texthl = 'DiagnosticError' })
sign('DapLogPoint',           { text = '', texthl = 'DiagnosticInfo' })
sign('DapStopped',            { text = '', texthl = 'Constant' })
sign('DapBreakpointRejected', { text = '', texthl = 'DiagnosticSignInfo'}) -- HACK: Put a proper hl.

-- Diagnostics
sign('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError', numhl = 'DiagnosticSignError' })
sign('DiagnosticSignWarn',  { text = '', texthl = 'DiagnosticSignWarn',  numhl = 'DiagnosticSignWarn' })
sign('DiagnosticSignInfo',  { text = '', texthl = 'DiagnosticSignInfo',  numhl = 'DiagnosticSignInfo' })
sign('DiagnosticSignHint',  { text = '', texthl = 'DiagnosticSignHint',  numhl = 'DiagnosticSignHint'})
