-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode == nil then
  -- ordinary Neovim
  vim.keymap.set("n", "<C-d>", "<C-d>zz")
  vim.keymap.set("n", "<C-u>", "<C-u>zz")
  vim.keymap.set("n", "<M-h>", "<CMD>BufferLineMovePrev<CR>", { noremap = true, silent = true })
  vim.keymap.set("n", "<M-l>", "<CMD>BufferLineMoveNext<CR>", { noremap = true, silent = true })
else
  local vscode = require("vscode")
  -- VSCode extension
  vim.keymap.set("n", "<leader>e", function()
    vscode.action("workbench.view.explorer")
  end)

  vim.keymap.set("n", "<leader>ca", function()
    vscode.action("editor.action.quickFix")
  end)

  vim.keymap.set("n", "<leader>cA", function()
    vscode.action("editor.action.sourceAction")
  end)

  vim.keymap.set("n", "<leader>cr", function()
    vscode.action("editor.action.rename")
  end)

  vim.keymap.set("n", "<leader>cf", function()
    vscode.action("editor.action.formatDocument")
  end)

  vim.keymap.set("n", "<leader>co", function()
    vscode.action("editor.action.organizeImports")
  end)

  vim.keymap.set("n", "<leader>cs", function()
    vscode.action("workbench.action.gotoSymbol")
  end)

  vim.keymap.set("n", "<leader>bd", function()
    vscode.action("workbench.action.closeActiveEditor")
  end)

  vim.keymap.set("n", "<leader>bo", function()
    vscode.action("workbench.action.closeOtherEditors")
  end)

  vim.keymap.set("n", "<leader>bl", function()
    vscode.action("workbench.action.closeEditorsToTheLeft")
  end)

  vim.keymap.set("n", "<leader>br", function()
    vscode.action("workbench.action.closeEditorsToTheRight")
  end)

  vim.keymap.set("n", "<leader>fn", function()
    vscode.action("workbench.action.files.newUntitledFile")
  end)

  vim.keymap.set("n", "<leader>gg", function()
    vscode.action("workbench.view.scm")
  end)

  vim.keymap.set("n", "gr", function()
    vscode.action("editor.action.referenceSearch.trigger")
  end)

  vim.keymap.set("n", "[[", function()
    vscode.action("editor.action.wordHighlight.prev")
  end)

  vim.keymap.set("n", "]]", function()
    vscode.action("editor.action.wordHighlight.next")
  end)

  vim.keymap.set("n", "[d", function()
    vscode.action("editor.action.marker.prev")
  end)

  vim.keymap.set("n", "]d", function()
    vscode.action("editor.action.marker.next")
  end)

  vim.keymap.set("n", "<leader>qq", function()
    vscode.action("workbench.action.closeWindow")
  end)
end
