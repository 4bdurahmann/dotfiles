return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "latte",
				color_overrides = {
					latte = {
						base = "#CAD0D8",
						mantle = "#C0C6CE",
						crust = "#B6BCC4",
						text = "#0B1626",
						subtext1 = "#19293F",
						subtext0 = "#274369",
						overlay2 = "#536A89",
						overlay1 = "#617590",
						overlay0 = "#6F8097",
						surface2 = "#A8B2C0",
						surface1 = "#B8C2D0",
						surface0 = "#C0CAD8",
						blue = "#21477A",
						lavender = "#274369",
						sapphire = "#0E2E61",
						sky = "#536A89",
						teal = "#21477A",
						green = "#2A5F5F",
						yellow = "#8B7355",
						peach = "#9B8B7C",
						maroon = "#6B5D5D",
						red = "#8B5A5A",
						mauve = "#536A89",
						pink = "#7A6B6B",
						flamingo = "#8B7A7A",
						rosewater = "#A8B2C0",
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}