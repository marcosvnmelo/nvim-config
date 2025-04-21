return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  icon = nil,
  opts = function(_, opts)
    opts.sections.lualine_a = {
      {
        "mode",
        icon = "",
        -- icon = "",
        color = { gui = "bold" },
      },
    }
  end,
}
