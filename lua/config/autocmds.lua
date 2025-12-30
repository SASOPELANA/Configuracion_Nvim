-- Añade esto a ~/.config/nvim/lua/config/autocmds.lua
-- Se ejecuta después de que TODO, incluido el tema, esté listo.
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- Define o re-define tus grupos de color personalizados AQUÍ
    vim.api.nvim_set_hl(0, "MiniIconsCss", { fg = "#663399" })
    vim.api.nvim_set_hl(0, "MiniIconsMdx", { fg = "#519ABA" })
    vim.api.nvim_set_hl(0, "MiniIconsTs", { fg = "#0188d1" })
    vim.api.nvim_set_hl(0, "MiniIconsSh", { fg = "#ff7043" })
  end,
})
