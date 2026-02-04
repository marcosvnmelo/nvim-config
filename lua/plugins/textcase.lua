return {
  "johmsalas/text-case.nvim",
  dependencies = { "folke/snacks.nvim" },
  config = function()
    require("textcase").setup({})
  end,
  keys = {
    "ga", -- Default invocation prefix
    {
      "ga.",
      function()
        -- Require lua file using relative path
        require("plugins.textcase.extensions.snacks").normal_mode()
      end,
      mode = { "n", "x" },
      desc = "Text Case",
    },
    {
      "ga.",
      function()
        require("plugins.textcase.extensions.snacks").visual_mode()
      end,
      mode = { "v" },
      desc = "Text Case",
    },
  },
  cmd = {
    -- NOTE: The Subs command name can be customized via the option "substitude_command_name"
    "Subs",
    "TextCaseOpenTelescope",
    "TextCaseOpenTelescopeQuickChange",
    "TextCaseOpenTelescopeLSPChange",
    "TextCaseStartReplacingCommand",
  },
  -- If you want to use the interactive feature of the `Subs` command right away, text-case.nvim
  -- has to be loaded on startup. Otherwise, the interactive feature of the `Subs` will only be
  -- available after the first executing of it or after a keymap of text-case.nvim has been used.
  lazy = false,
}
