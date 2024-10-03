local util = require("lspconfig.util")

return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    setup = {
      gopls = function(_, opts)
        opts.root_dir = util.root_pattern("go.work", "go.mod")
      end,
    },
  },
}
