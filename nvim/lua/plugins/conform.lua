return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    opts = {
      notify_on_error = true,
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
        c = { "clang_format" },
        html = { "djlint" },
      },
    },
  },
}
