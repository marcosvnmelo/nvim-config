return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      ["*"] = { "cspell" },
    },
    linters = {
      cspell = {
        args = {
          "lint",
          "--config",
          function()
            local defaultConfig = vim.fn.stdpath("config") .. "/cspell/config.json"

            local projectConfig = vim.fs.find(
              { ".cspell.json", "cspell.json" },
              { path = vim.api.nvim_buf_get_name(0), upward = true }
            )

            if #projectConfig > 0 then
              return projectConfig[1]
            end

            return defaultConfig
          end,
          "--no-color",
          "--no-progress",
          "--no-summary",
          function()
            return "stdin://" .. vim.api.nvim_buf_get_name(0)
          end,
        },
      },
    },
  },
}
