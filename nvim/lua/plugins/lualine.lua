local colors = {
    bg       = "#000000",
    fg       = "#a6adc8",
    purple   = "#cba6f7",
    red      = "#ec5f67",
    orange   = "#fab387",
    yellow   = "#f9e2af",
    green    = "#a6e3a1",
    cyan     = "#74c7ec",
    blue     = "#89b4fa",
}

return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function(_, opts)
            local icons = LazyVim.config.icons

            opts.options = {
                component_separators = "",
                section_separators = "",
                theme = {
                    normal = {
                        a = { fg = colors.blue, bg = colors.bg },
                        b = { fg = colors.blue, bg = colors.bg },
                        c = { fg = colors.fg, bg = colors.bg }
                    },
                    insert = { a = { fg = colors.green, bg = colors.bg } },
                    visual = { a = { fg = colors.purple, bg = colors.bg } },
                    inactive = {
                        a = { fg = colors.fg, bg = colors.bg },
                        b = { fg = colors.fg, bg = colors.bg },
                        c = { fg = colors.fg, bg = colors.bg }
                    },
                },
            }

            opts.sections = {
                lualine_a = { "mode" },
                lualine_b = {
                    "branch",
                    {
                        "diff",
                        symbols = {
                            added = icons.git.added,
                            modified = icons.git.modified,
                            removed = icons.git.removed,
                        },
                        source = function()
                            local gitsigns = vim.b.gitsigns_status_dict
                            if gitsigns then
                                return {
                                    added = gitsigns.added,
                                    modified = gitsigns.changed,
                                    removed = gitsigns.removed,
                                }
                            end
                        end,
                    },
                },
                lualine_c = {
                    {
                        "diagnostics",
                        symbols = {
                            error = icons.diagnostics.Error,
                            warn = icons.diagnostics.Warn,
                            info = icons.diagnostics.Info,
                            hint = icons.diagnostics.Hint,
                        },
                    },
                    { LazyVim.lualine.pretty_path() },
                },
                lualine_x = {
                    "encoding",
                    "filetype",
                },
                lualine_y = {
                    {
                        "progress",
                        color = {
                            fg = colors.fg,
                            bg = colors.bg,
                        },
                    },
                },
                lualine_z = {
                    {
                        "location",
                        color = {
                            fg = colors.fg,
                            bg = colors.bg,
                        },
                    },
                },
            }
        end,
    },
}
