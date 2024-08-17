return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  {
    "shaunsingh/nord.nvim",
  },
  {
    "cocopon/iceberg.vim",
  },
  {
    "AlexvZyl/nordic.nvim",
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
}
