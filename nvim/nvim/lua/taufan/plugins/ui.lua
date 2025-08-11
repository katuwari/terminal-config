return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
				},
			},
			-- views = {
			-- 	notify = {
			-- 		position = {
			-- 			row = -2, -- 2 lines above bottom
			-- 			col = "100%", -- right-aligned
			-- 		},
			-- 	},
			-- },
			presets = {
				command_palette = true,
				lsp_doc_border = true,
			},
		})
		-- Optional: configure nvim-notify itself
		-- require("notify").setup({
		-- 	timeout = 1000,
		-- 	top_down = false, -- newer notifications go below older ones
		-- 	render = "default",
		-- 	stages = "fade", -- or "slide" or "fade_in_slide_out"
		-- })
	end,
}
