return {
  "mason-org/mason.nvim",
  lazy = true,
  opts = {
    registries = {
      "github:mason-org/mason-registry",
      "github:Crashdummyy/mason-registry",
    },
    ensure_installed = { "nxls" },
  },
}
