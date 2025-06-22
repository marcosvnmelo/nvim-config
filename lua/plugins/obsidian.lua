return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  cmd = { "Obsidian" },
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    -- "BufReadPre path/to/my-vault/*.md",
    -- "BufNewFile path/to/my-vault/*.md",
    "BufReadPre "
      .. vim.fn.expand("~")
      .. "/vaults/*.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/vaults/*.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  ---@module 'obsidian'
  ---@type obsidian.config.ClientOpts
  opts = {
    ui = { enable = false },
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/obsidian-vault",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
  },
}
