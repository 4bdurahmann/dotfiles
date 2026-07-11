return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#0F0F06", -- Default background
                base01 = "#989862", -- Lighter background (status bars)
                base02 = "#0F0F06", -- Selection background
                base03 = "#989862", -- Comments, invisibles
                base04 = "#FAD296", -- Dark foreground
                base05 = "#fff8ed", -- Default foreground
                base06 = "#fff8ed", -- Light foreground
                base07 = "#FAD296", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#f66732", -- Variables, errors, red
                base09 = "#ffa685", -- Integers, constants, orange
                base0A = "#fae34c", -- Classes, types, yellow
                base0B = "#a6c671", -- Strings, green
                base0C = "#a9c2cb", -- Support, regex, cyan
                base0D = "#f85a04", -- Functions, keywords, blue
                base0E = "#e29983", -- Keywords, storage, magenta
                base0F = "#fff3a3", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
