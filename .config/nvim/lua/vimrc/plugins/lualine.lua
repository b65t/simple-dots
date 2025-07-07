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
        lualine_a = { "mode" },
        lualine_b = {  },
        lualine_c = {"filename", "branch", "diagnostics"},
        lualine_x = {"diff" },
        lualine_y = {  },
        lualine_z = {  },
      },
    },
}
