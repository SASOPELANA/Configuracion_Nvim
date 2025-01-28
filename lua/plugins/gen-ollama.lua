return {
  dir = "~/.config/nvim/plugins/gen.nvim", -- Ruta al plugin local
  opts = {
    model = "qwen2.5-coder:3b", -- Configuración específica del plugin
    host = "localhost",
    port = "11434",
    display_mode = "float",
    show_prompt = false,
    lenguaje = "es",
  },
}
