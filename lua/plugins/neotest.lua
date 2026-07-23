return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
    "Nsidorenco/neotest-vstest",
  },
  opts = {
    adapters = {
      ["neotest-jest"] = {},
      ["neotest-vitest"] = {},
      ["neotest-vstest"] = {},
    },
  },
}
