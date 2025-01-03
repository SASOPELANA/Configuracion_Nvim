return {
  -- Tema Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Cargar inmediatamente
    priority = 1000, -- Asegurarse de que el tema se carga primero
    config = function()
      require("tokyonight").setup({
        style = "night", -- Opciones: "storm", "moon", "night", "day"
        transparent = false,
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- Tema Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 999,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Opciones: "latte", "frappe", "macchiato", "mocha"
        transparent_background = false,
      })
    end,
  },

  -- Tema Dracula
  {
    "Mofiqul/dracula.nvim",
    lazy = false, -- Solo cargar cuando sea necesario
    config = function()
      require("dracula").setup({
        transparent_bg = true,
      })
    end,
  },

  -- Andormeda
  {
    "safv12/andromeda.vim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("andromeda") -- habilitar por defecto
    end,
  },

  -- aura theme
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      -- vim.cmd([[colorscheme aura-dark]])
    end,
  },

  -- Ciber Dream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Kaganagawa Themes
  {
    "rebelot/kanagawa.nvim",
  },

  -- Monakai Pro
  {
    "loctvl842/monokai-pro.nvim",
  },

  -- Nigh Fox Theme
  {
    "EdenEast/nightfox.nvim",
  },

  -- OneDark theme
  {
    "navarasu/onedark.nvim",
  },

  -- Solorize Osaka
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("solarized-osaka")
    end,
  },

  -- synthwave84 heme
  {
    "samharju/synthweave.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("synthweave")
      -- transparent version
      -- vim.cmd.colorscheme("synthweave-transparent")
    end,
  },
}
