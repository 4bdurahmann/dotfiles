-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
if vim.g.neovide then
	vim.api.nvim_create_autocmd("ColorScheme", {
		callback = function()
			if vim.o.background == "light" then
				vim.cmd("highlight Normal guibg=#282828 guifg=#ebdbb2")
				vim.cmd("highlight NormalFloat guibg=#282828 guifg=#ebdbb2")
			else
				vim.cmd("highlight Normal guibg=#f5f0e9 guifg=#2f2f2f")
				vim.cmd("highlight NormalFloat guibg=#f5f0e9 guifg=#2f2f2f")
			end
		end,
	})
	vim.api.nvim_create_autocmd("VimEnter", {
		callback = function()
			if vim.o.background == "light" then
				vim.cmd("highlight Normal guibg=#f5f0e9 guifg=#2f2f2f")
				vim.cmd("highlight NormalFloat guibg=#f5f0e9 guifg=#2f2f2f")
			else
				vim.cmd("highlight Normal guibg=#282828 guifg=#ebdbb2")
				vim.cmd("highlight NormalFloat guibg=#282828 guifg=#ebdbb2")
			end
		end,
	})
end
