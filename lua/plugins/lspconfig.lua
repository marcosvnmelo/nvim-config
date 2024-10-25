local util = require("lspconfig.util")

return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = true,
      exclude = { "typescript", "typescriptreact" },
    },
    servers = {
      hyprls = {},
      tailwindcss = {
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                { "cn\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                { "tv\\(([^)]*)\\)", "{?\\s?[\\w].*:\\s*?[\"'`]([^\"'`]*).*?,?\\s?}?" },
                { "([^\\s]*)ClassName", "([^\\s]*)" },
              },
            },
          },
        },
      },
    },
    setup = {
      gopls = function(_, opts)
        opts.root_dir = util.root_pattern("go.work", "go.mod")
      end,
    },
  },
}
