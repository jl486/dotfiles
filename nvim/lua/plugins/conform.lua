return {
    {
        'stevearc/conform.nvim',
        lazy = false,
        opts = {
            notify_on_error = true,
            formatters_by_ft = {
                lua = { 'stylua' },
                sh = { 'shfmt' },
                c = { 'clang_format' },
                html = { 'djlint' },
                -- Conform can also run multiple formatters sequentially
                -- python = { "isort", "black" },
                --
                -- You can use a sub-list to tell conform to run *until* a formatter
                -- is found.
                -- javascript = { { "prettierd", "prettier" } },
            },
            formatters = {
                c = {
                    --prepend_args = { '--style=file', '--fallback-style=LLVM' },
                    command = "clang-format",
                    args = 'style="{BasedOnStyle: llvm, IndentWidth: 4}"'
                },
                shfmt = {
                    prepend_args = { '-i', '4' },
                },
            },
        },
    },
}
