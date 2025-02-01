return {
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },

    config = function()
      local barbar = require("barbar")
      barbar.setup({
        animation = true,
        sidebar_filetypes = {
          NvimTree = true,
        }
      })

      local keymap = vim.keymap
      local opts = { noremap = true, silent = true }

      keymap.set("n", "<leader>[", "<cmd>BufferPrevious<CR>", opts) 
      keymap.set("n", "<leader>]", "<cmd>BufferNext<CR>", opts) 
      keymap.set("n", "<leader>bx", "<cmd>BufferClose<CR>", opts) 

    end,
  },
}
