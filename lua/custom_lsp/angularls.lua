local util = require("lspconfig.util")

require("lspconfig").angularls.setup({
  root_dir = util.root_pattern("angular.json", "project.json"),
})
