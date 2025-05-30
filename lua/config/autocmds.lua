-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.cmd([[ autocmd BufRead,BufEnter *.component.html set filetype=angular ]])

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.hl", "hypr*.conf" },
  command = "setfiletype hyprlang",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "fish",
  callback = function()
    vim.lsp.start({
      name = "fish-lsp",
      cmd = { "fish-lsp", "start" },
      cmd_env = { fish_lsp_show_client_popups = false },
    })
  end,
})
