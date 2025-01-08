-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Marcar errores y no marcarlos
-- comando <leader>ud  (espacio + ud) para activar el diagnostic
vim.diagnostic.disable()
vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  underline = false,
})
