-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false

-- Disable LazyVim import order check
vim.g.lazyvim_check_order = false

-- Set font for Neovide
if vim.g.neovide then
	vim.opt.guifont = "JetBrainsMono Nerd Font:h10"
	vim.schedule(function()
		if vim.o.background == "light" then
			vim.cmd("highlight Normal ctermfg=NONE ctermbg=NONE guifg=#484361 guibg=#f5f0e9")
		else
			vim.cmd("highlight Normal ctermfg=NONE ctermbg=NONE guifg=#e6d6ae guibg=#282828")
		end
	end)
end
