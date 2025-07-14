 return {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",
        component_separators = { left = " ", right = "" },
        section_separators = { left = "", right = "" },
        icons_enabled = true,
      },
      sections = {
        lualine_a = {  },
        lualine_b = {  {
          function() return '█' end,
          padding = { left = 0, right = 0 },
          color = { bg = 'NONE' }
          }, "mode"
        },
        lualine_c = { "filename", "branch", "diagnostics"},
        lualine_x = {"diff", "filetype" },
        lualine_y = { {
          function() return '▄' end,
          padding = { left = 0, right = 0 },
          color = { bg = 'NONE' }
          }
        },
        lualine_z = {  },
      },
    },
}
