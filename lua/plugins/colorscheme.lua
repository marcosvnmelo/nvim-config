return {
  { "catppuccin/nvim" },
  {
    "ellisonleao/gruvbox.nvim",

    opts = function()
      return {
        transparent_mode = true,
        italic = {
          strings = false,
        },
      }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
