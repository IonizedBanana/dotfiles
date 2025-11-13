return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls" }
         })
      end
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         vim.lsp.enable("lua_ls", "hyprls", "bashls", "jdtls",
            "pylsp", "shellcheck", "debugpy", "qmlls")
         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, {})
      end
   }
}
