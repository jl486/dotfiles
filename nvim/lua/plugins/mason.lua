return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "asm-lsp",
        "clangd",
        "flake8",
        "lua-language-server",
        "stylua",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server"
      },
    },
  },
}
