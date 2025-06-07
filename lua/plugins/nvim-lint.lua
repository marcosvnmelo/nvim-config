return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      ["*"] = {
        "cspell",
        "eslint_d",
      },
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
      eslint_d = {
        condition = function()
          if not vim.g.marcosvnmelo_use_eslint_d then
            return false
          end

          local enabledFiletypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "svelte",
            "astro",
          }

          local isFiletypeEnabled = false

          for _, filetype in ipairs(enabledFiletypes) do
            if vim.bo.filetype == filetype then
              isFiletypeEnabled = true
              break
            end
          end

          if not isFiletypeEnabled then
            return false
          end

          return #(
              vim.fs.find(
                { "eslint.config.js", "eslint.config.mjs" },
                { path = vim.api.nvim_buf_get_name(0), upward = true }
              )
            ) > 0
        end,
        prepend_args = {
          "--config",
          function()
            return vim.fs.find(
              { "eslint.config.js", "eslint.config.mjs" },
              { path = vim.api.nvim_buf_get_name(0), upward = true }
            )[1]
          end,
        },
      },
    },
  },
}
