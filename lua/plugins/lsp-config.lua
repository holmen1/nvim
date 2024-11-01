return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        -- your configuration comes here
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "hls", -- haskell
          "lua_ls",
        },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.hls.setup({})
      lspconfig.lua_ls.setup({})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  }
}
