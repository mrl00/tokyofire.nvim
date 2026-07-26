local util = require("tokyonight.util")

local M = {}

local function hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return {
    r = tonumber(hex:sub(1, 2), 16),
    g = tonumber(hex:sub(3, 4), 16),
    b = tonumber(hex:sub(5, 6), 16),
  }
end

local function rgba(hex, alpha)
  local c = hex_to_rgb(hex)
  return string.format("rgba(%d, %d, %d, %s)", c.r, c.g, c.b, alpha)
end

--- @param colors ColorScheme
function M.generate(colors)
  colors.bg_solid = colors.bg
  colors.bg_dark_solid = colors.bg_dark
  colors.bg_dark1_solid = colors.bg_dark1
  colors.bg_highlight_solid = colors.bg_highlight

  colors.bg_primary = rgba(colors.bg, 0.85)
  colors.bg_secondary = rgba(colors.bg_dark, 0.90)
  colors.bg_tertiary = rgba(colors.bg_dark1, 0.95)
  colors.bg_accent = rgba(colors.bg_highlight, 0.80)
  colors.bg_sidebar = rgba(colors.bg_dark, 0.92)
  colors.bg_modal = rgba(colors.bg_dark, 0.95)
  colors.bg_float = rgba(colors.bg_dark, 0.92)
  colors.bg_tab = rgba(colors.bg, 0.85)
  colors.bg_tab_hover = rgba(colors.bg_highlight, 0.80)
  colors.bg_code = rgba(colors.bg_dark, 0.90)
  colors.bg_input = rgba(colors.bg, 0.90)
  colors.bg_hover = rgba(colors.fg, 0.05)
  colors.bg_selected = rgba(colors.fg, 0.10)
  colors.bg_active = rgba(colors.fg, 0.15)
  colors.bg_border = rgba(colors.bg_highlight, 0.60)
  colors.bg_scrollbar = rgba(colors.bg_highlight, 0.50)

  local obsidian = util.template(
    [[
/*
 * Tokyo Fire — Obsidian Theme
 * Theme: ${_style_name}
 * Upstream: ${_upstream_url}
 */

.theme-dark {
  --background-primary: ${bg_primary};
  --background-primary-alt: ${bg_primary};
  --background-secondary: ${bg_secondary};
  --background-secondary-alt: ${bg_tertiary};
  --background-modifier-border: ${bg_border};
  --background-modifier-form-field: ${bg_input};
  --background-modifier-hover: ${bg_hover};
  --background-modifier-active-press: ${bg_active};
  --background-modifier-selected: ${bg_selected};
  --background-modifier-gradient: ${bg_secondary};
  --text-normal: ${fg};
  --text-muted: ${comment};
  --text-faint: ${dark3};
  --text-on-accent: ${bg_solid};
  --text-error: ${red};
  --text-success: ${green};
  --text-warning: ${yellow};
  --text-accent: ${orange};
  --interactive-normal: ${fg_dark};
  --interactive-hover: ${fg};
  --interactive-active: ${orange};
  --interactive-accent: ${orange};
  --interactive-success: ${green};
  --interactive-warning: ${yellow};
  --interactive-error: ${red};
  --status-bar-background: ${bg_secondary};
  --tab-bar-background: ${bg_secondary};
  --tab-bar-background-focused: ${bg_tab};
  --tab-background-active: ${bg_tab};
  --tab-background-hover: ${bg_tab_hover};
  --scrollbar-thumb: ${bg_scrollbar};
  --scrollbar-thumb-hover: ${bg_accent};
  --scrollbar-thumb-active: ${dark3};
  --scrollbar-track: transparent;
  --sidebar-background: ${bg_sidebar};
  --sidebar-header-background: ${bg_secondary};
  --sidebar-header-text: ${comment};
  --sidebar-item-current: ${bg_accent};
  --sidebar-title-text: ${comment};
  --sidebar-item-hover: ${bg_hover};
  --inline-title: ${orange};
  --link: ${orange};
  --link-accent: ${orange};
  --tag: ${green1};
  --outline-accent: ${orange};
  --code-normal: ${fg};
  --code-background: ${bg_code};
  --pre-background: ${bg_code};
  --input-border: ${bg_border};
  --input-background: ${bg_input};
  --input-color: ${fg};
  --dropdown-background: ${bg_modal};
  --dropdown-border: ${bg_border};
  --dropdown-text: ${fg};
  --checkbox-background: ${orange};
  --modal-background: ${bg_modal};
  --modal-border: ${bg_border};
  --popover-background: ${bg_modal};
  --popover-border: ${bg_border};
  --shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
  --header-separator: ${bg_border};
  --accent-h: 20;
  --accent-s: 92%;
  --accent-l: 60%;
}

.theme-light {
  --background-primary: ${bg_solid};
  --background-primary-alt: ${bg_solid};
  --background-secondary: ${bg_dark_solid};
  --background-secondary-alt: ${bg_dark1_solid};
  --background-modifier-border: ${bg_highlight_solid};
  --background-modifier-form-field: ${bg_solid};
  --background-modifier-hover: ${fg_gutter};
  --background-modifier-active-press: ${dark5};
  --background-modifier-selected: ${dark3};
  --background-modifier-gradient: ${bg_dark_solid};
  --text-normal: ${bg_solid};
  --text-muted: ${dark5};
  --text-faint: ${dark3};
  --text-on-accent: ${fg};
  --text-error: ${red};
  --text-success: ${green};
  --text-warning: ${yellow};
  --text-accent: ${orange};
  --interactive-normal: ${dark3};
  --interactive-hover: ${dark5};
  --interactive-active: ${orange};
  --interactive-accent: ${orange};
  --interactive-success: ${green};
  --interactive-warning: ${yellow};
  --interactive-error: ${red};
  --status-bar-background: ${bg_dark_solid};
  --tab-bar-background: ${bg_dark_solid};
  --tab-bar-background-focused: ${bg_solid};
  --tab-background-active: ${bg_solid};
  --tab-background-hover: ${bg_highlight_solid};
  --scrollbar-thumb: ${dark5};
  --scrollbar-thumb-hover: ${dark3};
  --scrollbar-thumb-active: ${fg_gutter};
  --scrollbar-track: transparent;
  --sidebar-background: ${bg_dark_solid};
  --sidebar-header-background: ${bg_dark_solid};
  --sidebar-header-text: ${dark5};
  --sidebar-item-current: ${bg_highlight_solid};
  --sidebar-title-text: ${dark5};
  --sidebar-item-hover: ${bg_highlight_solid};
  --inline-title: ${orange};
  --link: ${orange};
  --link-accent: ${orange};
  --tag: ${green2};
  --outline-accent: ${orange};
  --code-normal: ${bg_solid};
  --code-background: ${bg_dark_solid};
  --pre-background: ${bg_dark_solid};
  --input-border: ${dark5};
  --input-background: ${bg_solid};
  --input-color: ${bg_solid};
  --dropdown-background: ${bg_solid};
  --dropdown-border: ${dark5};
  --dropdown-text: ${bg_solid};
  --checkbox-background: ${orange};
  --modal-background: ${bg_solid};
  --modal-border: ${dark5};
  --popover-background: ${bg_solid};
  --popover-border: ${dark5};
  --shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  --header-separator: ${dark5};
  --accent-h: 20;
  --accent-s: 92%;
  --accent-l: 60%;
}
]],
    colors
  )

  return obsidian
end

return M
