return {
	'KronsyC/nvim-license',
	opts = function()
		return {
			name = 'AIT EL HAJ Abdelouadoud',
			year = '2025',
		}
	end,

	cmd = {
		'License',
		'LicenseHeader',
		'AutoLicense',
	},
	dependencies = {
		{ 'numToStr/Comment.nvim' },
	},
}
