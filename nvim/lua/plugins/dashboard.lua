return {
    {
        "nvimdev/dashboard-nvim",
        lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
        opts = function(_, opts)
            local logo = string.format("NVIM v%s.%s.%s", vim.inspect(vim.version().major), vim.inspect(vim.version().minor), vim.inspect(vim.version().patch))
            logo = string.rep("\n", 16) .. logo .. "\n\n"
            opts.config.header = vim.split(logo, "\n")
        end,
    }
}
