return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("package-info").setup({
      package_manager = "pnpm",
      hide_up_to_date = true,
    })
  end,
}
