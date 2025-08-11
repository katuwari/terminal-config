-- return {
-- 	{
-- 		"sphamba/smear-cursor.nvim",
-- 		event = "VeryLazy",
-- 		config = function()
-- 			require("smear_cursor").setup({
-- 				-- optional config (defaults shown)
-- 				cursor_color = nil, -- Use default cursor highlight group
-- 				smear_length = 15,
-- 				smear_char = "∙",
-- 			})
-- 		end,
-- 	},
-- }
return {
	{
		"sphamba/smear-cursor.nvim",
		event = "VeryLazy",
		config = function()
			-- Cursor appearance
			vim.opt.guicursor = {
				"n-v-c:block", -- Normal, visual, command: block cursor
				"i-ci-ve:ver25", -- Insert, command-insert, visual-exclude: 25% vertical bar
				"r-cr:hor20", -- Replace, command-replace: 20% horizontal bar
				"o:hor50", -- Operator-pending: 50% horizontal bar
				"a:blinkwait700-blinkoff400-blinkon250", -- Blinking settings
			}

			-- Smear Cursor settings
			require("smear_cursor").setup({
				cursor_color = nil, -- use default
				smear_length = 15,
				smear_char = "∙",
				smear_between_buffers = true,
				smear_between_neighbor_lines = true,
				smear_insert_mode = true,
				scroll_buffer_space = true,
				legacy_computing_symbols_support = false,
			})
		end,
	},
}
