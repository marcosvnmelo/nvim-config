local util = require("lspconfig.util")

require("lspconfig").gopls.setup({
  root_dir = util.root_pattern("go.work", "go.mod"),
})
