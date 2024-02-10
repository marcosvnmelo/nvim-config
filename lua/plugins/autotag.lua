return {
  "windwp/nvim-ts-autotag",
  enabled = false,
  ft = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
