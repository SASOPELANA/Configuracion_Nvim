return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Opciones: latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false, -- Desactiva el fondo transparente
        show_end_of_buffer = false, -- Muestra los caracteres '~' después del final del buffer
        term_colors = true, -- Configura los colores del terminal
        dim_inactive = {
          enabled = false, -- Atenúa el color de fondo de las ventanas inactivas
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- Desactiva la cursiva
        no_bold = false, -- Desactiva la negrita
        no_underline = false, -- Desactiva el subrayado
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })

      --  vim.cmd.colorscheme("catppuccin") -- Habalitar para defecto
    end,
  },
}
