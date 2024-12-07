return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters = {
      ["markdownlint-cli2"] = {
        args = { "--config", "/Users/umairziyan/.config/nvim/lua/plugins/.markdownlint-cli2.yaml", "--" },
      },
    },
  },
}
