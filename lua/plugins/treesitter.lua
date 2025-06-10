-- Highlight, edit, and navigate code
return { 
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	dependencies = {
        {"nvim-treesitter/nvim-treesitter-textobjects"}, -- Syntax aware text-objects
    },
	main = 'nvim-treesitter.configs', -- Sets main module to use for opts
	opts = {
	ensure_installed = { 'go', 'json', 'yaml', 'bash', 'c', 'diff', 'html', 'css', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
	-- Autoinstall languages that are not installed
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
	}
}
