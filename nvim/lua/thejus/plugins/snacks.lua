return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snack.Config

  opts = {
    indent = { enabled = true },
    scroll = { enable = true },
    lazygit = { enable = true },
    notifier = { enable = true },
    input = { enable = true },
  }
}
