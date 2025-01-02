return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local autopairs = require("nvim-autopairs")

    autopairs.setup({

      check_ts = true, -- check treesitter
      ts_config = {
        lua = { "string" }
      },
    })
  end,

}
