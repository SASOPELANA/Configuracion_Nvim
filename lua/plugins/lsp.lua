return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "jose-elias-alvarez/null-ls.nvim",
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          border = "rounded",
        },
      },
    },
    "folke/neodev.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  event = "VeryLazy",
  main = "alpha.lsp",
  opts = {
    mason = {
      enable = true,
      auto_install = true,
    },
    servers = {
      phpactor = { enable = true },
      pyright = { enable = true }, -- Habilitar pyright para Python
      tsserver = { enable = true }, -- Habilitar tsserver para TypeScript/JavaScript
      omnisharp = { enable = true }, -- Habilitar omnisharp para C#
      clangd = { enable = true }, -- Habilitar clangd para C++
      cssls = { enable = true }, -- Habilitar cssls para CSS
      html = { enable = true }, -- Habilitar html para HTML
      jsonls = { enable = true }, -- Habilitar jsonls para JSON
      lua_ls = { enable = true }, -- Habilitar lua_ls para Lua
      rust_analyzer = { enable = true }, -- Habilitar rust_analyzer para Rust
      gopls = { enable = true }, -- Habilitar gopls para Go
      dockerls = { enable = true }, -- Habilitar dockerls para Docker
      docker_compose_language_service = { enable = true }, -- Habilitar docker_compose_language_service para Docker Compose
      bashls = { enable = true }, -- Habilitar bashls para Bash
      sqlls = { enable = true }, -- Habilitar sqlls para SQL
      vimls = { enable = true }, -- Habilitar vimls para Vim Script
      astro = { enable = true }, -- Habilitar angularls para Angular
      tailwindcss = { enable = true },
      -- ... otros lenguajes y herramientas
    },
  },
}
