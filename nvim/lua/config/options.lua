-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Usar espacios en lugar de tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Números de línea relativos (muy útil para saltar con j/k)
vim.opt.relativenumber = true

-- Portapapeles del sistema
vim.opt.clipboard = "unnamedplus"
