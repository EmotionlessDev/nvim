return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- require("none-ls.formatting.stylua"),
				require("none-ls.formatting.latexindent"),
				null_ls.builtins.formatting.stylua,
				--null_ls.builtins.formatting.latexindent,
				--null_ls.builtins.formatting.clang_format,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
