return {
	{
		{
			"williamboman/mason.nvim",
			lazy = false,
			config = function()
				require("mason").setup()
			end,
		},
		{
			"williamboman/mason-lspconfig.nvim",
			lazy = false,
			opts = {
				auto_install = true,
			},
		},
		{
			"neovim/nvim-lspconfig",
			lazy = false,
			config = function()
				local lspconfig = require("lspconfig")

				lspconfig.gopls.setup({
					cmd = { "gopls" },
					settings = {
						gopls = {
							completeUnimported = true,
							usePlaceholders = true,
							analyses = {
								unusedparams = true,
							},
						},
					},
				})

				vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
				vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
				vim.keymap.set("n", "gI", vim.lsp.buf.implementation, {})
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
				-- vim.keymap.set("n", "<leader>D", vim.lsp.buf.typeDefinition, {})
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			end,
		},
	},
}

