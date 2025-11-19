return {
  "folke/snacks.nvim",
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      preset = {
        header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
  [ @marcosvnmelo ] ]],
      },
    },
    picker = {
      sources = {
        explorer = {
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
      -- layouts = {
      --   sidebar = {
      --     layout = {
      --       position = "right",
      --     },
      --   },
      -- },
    },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    words = { enabled = true },
  },
}
