return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		local colors = {
			blue = "#65D1FF",
			green = "#3EFFDC",
			violet = "#FF61EF",
			yellow = "#FFDA7B",
			red = "#FF4A4A",
			fg = "#c3ccdc",
			bg = "#112638",
			inactive_bg = "#2c3043",
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
				b = { bg = "none", fg = colors.fg },
				c = { bg = "none", fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = "none", fg = colors.fg },
				c = { bg = "none", fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = "none", fg = colors.fg },
				c = { bg = "none", fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = "none", fg = colors.fg },
				c = { bg = "none", fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = "none", fg = colors.fg },
				c = { bg = "none", fg = colors.fg },
			},
			inactive = {
				a = { bg = "none", fg = "#FFDA7B", gui = "bold" },
				b = { bg = "none", fg = "#FFDA7B" },
				c = { bg = "none", fg = "#FFDA7B" },
			},
		}

		lualine.setup({
			options = {
				theme = my_lualine_theme,
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 2, -- 0 = just filename, 1 = relative path, 2 = absolute path
						symbols = { modified = "●", readonly = "", unnamed = "[No Name]" },
						color = { fg = "#65D1FF" },
					},
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#FF9E64" },
					},
					--					{ "encoding" },
					--					{ "fileformat" },
					{
						"filetype",
						color = { fg = "65D1FF" },
					},
				},
				lualine_y = {
					{
						"progress",
						color = { fg = "65D1FF" },
					},
				},
			},
		})

		-- Make sure statusline background is transparent globally
		vim.cmd([[
			hi StatusLine guibg=NONE ctermbg=NONE
			hi StatusLineNC guibg=NONE ctermbg=NONE
		]])
	end,
}
