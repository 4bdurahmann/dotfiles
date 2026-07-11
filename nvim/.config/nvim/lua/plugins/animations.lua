return {
  -- Smear cursor effect when moving (disabled in Neovide)
  {
    "sphamba/smear-cursor.nvim",
    enabled = not vim.g.neovide, -- Disable if running Neovide
    opts = {
      -- Smear cursor color in different modes
      cursor_color = "#d3cdc3",
      -- Use the colorscheme's cursor color instead
      use_default_cursor_color = true,
      -- Use floating window instead of virtual text
      floating_window = true,
      -- Smear blend (lower = more visible)
      smear_between_buffers = true,
      -- Stiffness of the smear (0-1, higher = stickier)
      stiffness = 0.8,
      -- Damping (0-1, higher = faster settling)
      damping = 0.7,
      -- Threshold for minimum movement
      threshold = 2,
    },
  },

  -- Smooth scrolling
  {
    "declancm/cinnamon.nvim",
    opts = {
      -- Smooth scrolling for many motions using new keymaps format
      keymaps = {
        basic = true,
        extended = true,
      },
      -- Hold for smooth mouse scroll
      hold_ratio = 0.5,
    },
  },

  -- Smooth scrolling animation (disable in Neovide since it has native smooth scrolling)
  {
    "karb94/neoscroll.nvim",
    enabled = not vim.g.neovide, -- Disable if running Neovide
    opts = {
      -- All available keys will be mapped to their corresponding default scrolling animation
      mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
                   '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
      hide_cursor = true,          -- Hide cursor while scrolling
      stop_eof = true,             -- Stop at end of file
      use_local_scrolloff = false, -- Use local scrolloff
      respect_scrolloff = false,   -- Respect scrolloff
      cursor_scrolls_alone = true, -- Scroll cursor with window
    },
  },
}
