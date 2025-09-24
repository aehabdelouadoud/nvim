return {
	'CRAG666/code_runner.nvim',
	config = true,
	opts = {
		filetype = {
			c = function(...)
				local c_base = {
					'cd $dir &&',
					'gcc $fileName -o /tmp/$fileNameWithoutExt',
				}

				vim.ui.input({ prompt = 'Program arguments:' }, function(input)
					-- Default to empty string if input is nil
					local exec_with_args = {
						'&& /tmp/$fileNameWithoutExt '
							.. (input or '')
							.. ' &&',
						'rm /tmp/$fileNameWithoutExt',
					}

					local full_cmd = vim.list_extend(c_base, exec_with_args)
					vim.print(full_cmd)
					require('code_runner.commands').run_from_fn(full_cmd)
				end)
			end,
			cpp = function(...)
				local c_base = {
					'cd $dir &&',
					'g++ $fileName -o /tmp/$fileNameWithoutExt',
				}

				vim.ui.input({ prompt = 'Program arguments:' }, function(input)
					-- Default to empty string if input is nil
					local exec_with_args = {
						'&& /tmp/$fileNameWithoutExt '
							.. (input or '')
							.. ' &&',
						'rm /tmp/$fileNameWithoutExt',
					}

					local full_cmd = vim.list_extend(c_base, exec_with_args)
					vim.print(full_cmd)
					require('code_runner.commands').run_from_fn(full_cmd)
				end)
			end,
		},
	},
}
