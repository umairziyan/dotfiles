return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", opts = { transparent = true } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
