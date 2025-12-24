return {
  {
    "nvim-mini/mini.icons",
    enabled = false,
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      default = false,
      color_icons = true,
    },
  },
  {
    "DaikyXendo/nvim-material-icon",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- Configura el icono personalizado para archivos .css
      require("nvim-web-devicons").setup({
        override_by_extension = {
          ["css"] = {
            icon = "", -- El nuevo icono que pegaste
            color = "#663399", -- Color azul (ajústalo si quieres)
            name = "Css",
          },
        },
        default = false,
        color_icons = true,
      })

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          require("nvim-web-devicons").setup()
        end,
      })
    end,
  },
}
