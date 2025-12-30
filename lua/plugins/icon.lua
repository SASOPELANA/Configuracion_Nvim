return {
  {
    "nvim-mini/mini.icons",
    lazy = true,
    opts = {
      -- Configuración principal de iconos
      default = {
        -- Ejemplo: puedes sobreescribir el icono por defecto para archivos
        file = { glyph = "󰈙" },
      },
      -- AQUÍ: Personalizar iconos por EXTENSIÓN (no por 'filetype')
      extension = {
        mdx = { glyph = " ", hl = "MiniIconsMdx" },
        css = { glyph = " ", hl = "MiniIconsCss" },
        md = { glyph = " ", hl = "MiniIconsGrey" },
        ts = { glyph = "󰛦 ", hl = "MiniIconsTs" },
        env = { glyph = " ", hl = "MiniIconsYellow" },
        http = { glyph = "󰖟 ", hl = "MiniIconsRed" },
        sh = { glyph = "󰆍 ", hl = "MiniIconsSh" },
      },
      -- Puedes seguir configurando otras categorías si lo necesitas:
      filetype = {
        -- Aquí irían personalizaciones para tipos como 'lua', 'python', etc.
      },
      file = {
        [".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
        ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
      },
      -- Configuración opcional: función para controlar extensiones
      use_file_extension = function(ext, file)
        -- Ejemplo: ignorar extensión 'log' para usar detección de filetype
        if ext == "log" then
          return false
        end
        return true
      end,
    },
    init = function()
      -- MAGIA: Hace que 'mini.icons' controle las llamadas a 'nvim-web-devicons'
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
    config = function(_, opts)
      require("mini.icons").setup(opts)
    end,
  },
}
