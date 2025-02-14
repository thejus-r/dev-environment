return {

  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },

  config = function()
    local telescope = require("telescope")
    local actions= require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
         file_ignore_patterns = {
          "node_modules",
          ".git"
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<ESC>"] = actions.close

          },
        },
      },
    })

    telescope.load_extension('fzf')

    local keymap = vim.keymap
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files follow=true no_ignore=true<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

  end,

}
