return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim", config = true },
    "williamboman/mason-lspconfig.nvim",
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { "j-hui/fidget.nvim", opts = {} },
    { "folke/neodev.nvim", opts = {} }
  },
  config = function()
    require("mason").setup()
    
    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
      }
    })

    local servers = {
      lua_ls,
      tsserver,
      pyright,
      gopls
    }

    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          require("lsp-config")[server_name].setup(server)
        end
      }
    })
  end
}
