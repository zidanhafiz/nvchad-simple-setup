---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "onedark", "one_light" },
  transparency = false,

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,

    header = {
      "███╗   ███╗███████╗ ██████╗ ██╗   ██╗███╗   ███╗██╗",
      "████╗ ████║██╔════╝██╔════╝ ██║   ██║████╗ ████║██║",
      "██╔████╔██║█████╗  ██║  ███╗██║   ██║██╔████╔██║██║",
      "██║╚██╔╝██║██╔══╝  ██║   ██║██║   ██║██║╚██╔╝██║██║",
      "██║ ╚═╝ ██║███████╗╚██████╔╝╚██████╔╝██║ ╚═╝ ██║██║",
      "╚═╝     ╚═╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝",
    },
  },
  -- cmp themeing
  cmp = {
    icons = false,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "white", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "simple", -- colored / simple
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = false,
    lazyload = true,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
