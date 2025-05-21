-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.opt.winbar = "%=%m %f"
vim.g.ai_cmp = false

if vim.g.vscode == nil then
  -- ordinary Neovim
  vim.opt.spelllang = { "en", "pt" }
  vim.opt.spell = true
  vim.opt.spelloptions = "camel"
  vim.opt.termguicolors = true

  vim.g.gruvbox_material_transparent_background = 1
  vim.g.lazyvim_prettier_needs_config = true
else
  -- VSCode extension
end
