return {
  {
    'echasnovski/mini.tabline',
    version = '*',
    opts = {
      show_icons = true,
      format = nil,
      tabpage_section = 'left',
    },
  },
  {
    'echasnovski/mini.diff',
    version = '*',
    opts = {}
  },
  {
    'echasnovski/mini.starter',
    version = '*',
    config = function() 
      local starter = require('mini.starter')
      starter.setup({
        evaluate_single = true,
	silent = true,
	footer = "",
        content_hooks = {
          starter.gen_hook.adding_bullet(),
          starter.gen_hook.aligning("center", "center"),
        },
      })
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  }
}
