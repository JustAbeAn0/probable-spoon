-- ~/.config/nvim/lua/Srijan/plugins/colorscheme.lua
return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    -- Define custom colors
    local bg = "#1E1B29"        -- Subtle blend of black and purple
    local bg_dark = "#161321"   -- Darker shade for inactive elements
    local bg_highlight = "#2B2034" -- Highlighted background color with subtle purple
    local bg_search = "#3C2D46" -- Background color for search highlights
    local bg_visual = "#3F2A4B" -- Background color for visual mode
    local fg = "#D8DEE9"        -- Light foreground color
    local fg_dark = "#B0BEC5"   -- Darker foreground color
    local fg_gutter = "#8C9D9E" -- Color for gutter and line numbers
    local border = "#616161"    -- Border color for UI elements

    -- Set up the Tokyo Night colorscheme
    require("tokyonight").setup({
      style = "night", -- Choose between "night", "storm", and "day"
      transparent = false, -- Ensure background is not transparent
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme tokyonight")

    -- Define custom highlights
    local highlight = vim.api.nvim_set_hl

    -- Background and foreground colors
    highlight(0, "Normal", { bg = bg, fg = fg })
    highlight(0, "NormalNC", { bg = bg, fg = fg_dark })
    highlight(0, "CursorLine", { bg = bg_highlight })
    highlight(0, "CursorColumn", { bg = bg_highlight })
    highlight(0, "Pmenu", { bg = bg_dark, fg = fg })
    highlight(0, "PmenuSel", { bg = bg_search, fg = fg })

    -- Syntax highlighting
    highlight(0, "Comment", { fg = "#7D7D7D", italic = true }) -- Grey color for comments
    highlight(0, "Function", { fg = "#FFB86C", bold = true }) -- Function names in a bright orange
    highlight(0, "Variable", { fg = "#D8DEE9" }) -- Variables in the default foreground color
    highlight(0, "String", { fg = "#98C379" }) -- Strings in a green color
    highlight(0, "Identifier", { fg = "#FF79C6" }) -- Identifiers in pink
    highlight(0, "Keyword", { fg = "#FF5555", bold = true }) -- Keywords in bright red
    highlight(0, "Type", { fg = "#BD93F9" }) -- Types in a light purple

    -- Additional syntax highlighting
    highlight(0, "Type", { fg = "#BD93F9", bold = true }) -- Type in light purple
    highlight(0, "Identifier", { fg = "#D8DEE9" }) -- Variable in light color
    highlight(0, "PreProc", { fg = "#FFB86C" }) -- Preprocessor directives in orange
    highlight(0, "Function", { fg = "#FFB86C", bold = true }) -- Function names in orange
    highlight(0, "Statement", { fg = "#FF79C6" }) -- Statements in pink
    highlight(0, "Operator", { fg = "#FF5555" }) -- Operators in red
    highlight(0, "Special", { fg = "#FFB86C" }) -- Special elements in orange

    -- Additional UI elements
    highlight(0, "LineNr", { fg = fg_gutter })
    highlight(0, "SignColumn", { bg = bg })
    highlight(0, "StatusLine", { bg = bg_dark, fg = fg })
    highlight(0, "StatusLineNC", { bg = bg_dark, fg = fg_gutter })
    highlight(0, "TabLine", { bg = bg_dark, fg = fg_gutter })
    highlight(0, "TabLineFill", { bg = bg_dark })
    highlight(0, "TabLineSel", { bg = bg_search, fg = fg })
    highlight(0, "Visual", { bg = bg_visual })
    highlight(0, "Search", { bg = bg_search, fg = fg })
    highlight(0, "MatchParen", { bg = bg_highlight, fg = fg })
    highlight(0, "DiffAdd", { fg = "#8CCF5E" })
    highlight(0, "DiffChange", { fg = "#F5A623" })
    highlight(0, "DiffDelete", { fg = "#FF7B72" })
    highlight(0, "DiffText", { fg = "#D8DEE9" })
  end,
}




