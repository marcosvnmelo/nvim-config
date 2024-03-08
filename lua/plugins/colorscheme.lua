return {
  { "catppuccin/nvim" },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
      italic = {
        strings = false,
      },
    },
  },

  {
    "sainnhe/gruvbox-material",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
