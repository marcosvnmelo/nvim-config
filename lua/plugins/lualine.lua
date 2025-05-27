return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  icon = nil,
  opts = function(_, opts)
    local icons = LazyVim.config.icons

    opts.sections.lualine_a = {
      {
        "mode",
        icon = "",
        -- icon = "",
        color = { gui = "bold" },
      },
    }
    opts.sections.lualine_c = {
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
    }
  end,
}
