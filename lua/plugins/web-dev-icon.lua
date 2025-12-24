return {
  "nvim-tree/nvim-web-devicons",
  lazy = true, -- Asegura la carga previa
  init = function() -- Configuración que se ejecuta AL INICIO
    require("nvim-web-devicons").setup()
  end,
}
