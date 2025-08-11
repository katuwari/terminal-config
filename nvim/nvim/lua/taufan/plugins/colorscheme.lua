--return {
--	{
--		"folke/tokyonight.nvim",
--		priority = 1000, -- make sure to load this before all the other start plugins
--		config = function()
--			local bg = "#011628"
--			local bg_dark = "#011423"
--			local bg_highlight = "#143652"
--			local bg_search = "#0A64AC"
--			local bg_visual = "#275378"
--			local fg = "#CBE0F0"
--			local fg_dark = "#B4D0E9"
--			local fg_gutter = "#627E97"
--			local border = "#547998"
--
--			require("tokyonight").setup({
--				style = "night",
--				transparent = true,
--				on_colors = function(colors)
--					colors.bg = bg
--					colors.bg_dark = bg_dark
--					colors.bg_float = bg_dark
--					colors.bg_highlight = bg_highlight
--					colors.bg_popup = bg_dark
--					colors.bg_search = bg_search
--					colors.bg_sidebar = bg_dark
--					colors.bg_statusline = bg_dark
--					colors.bg_visual = bg_visual
--					colors.border = border
--					colors.fg = fg
--					colors.fg_dark = fg_dark
--					colors.fg_float = fg
--					colors.fg_gutter = fg_gutter
--					colors.fg_sidebar = fg_dark
--				end,
--			})
--			-- load the colorscheme here
--			vim.cmd([[colorscheme tokyonight]])
--		end,
--	},
--}

-- return {
-- 	{
-- 		"scottmckendry/cyberdream.nvim",
-- 		priority = 1000, -- load before other plugins
-- 		config = function()
-- 			require("cyberdream").setup({
-- 				transparent = true, -- ✨ makes background transparent
-- 				italic_comments = true, -- optional
-- 				hide_fillchars = true, -- optional
-- 				terminal_colors = true, -- optional
-- 			})
--
-- 			-- Set the colorscheme
-- 			vim.cmd("colorscheme cyberdream")
--
-- 			-- (Optional) Extra highlight tweaks for full transparency
-- 			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
-- 		end,
-- 	},
-- }
return {
	{
		"craftzdog/solarized-osaka.nvim",
		priority = 1000, -- load before other plugins
		config = function()
			-- Set optional background: "dark" or "light"
			vim.o.background = "dark"

			-- Set true color
			vim.opt.termguicolors = true

			-- Load the colorscheme
			vim.cmd("colorscheme solarized-osaka")

			-- (Optional) Extra highlight tweaks for transparency
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
		end,
	},
}
