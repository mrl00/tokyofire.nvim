local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local spicetifyColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      spicetifyColors[k] = v:gsub("^#", "")
    end
  end

  local spicetify = util.template(
    [=[
; Tokyo Night ${_style_name}
; Upstream: ${_upstream_url}

[${_style}]
text           = ${fg}
subtext        = ${fg_dark}
main           = ${bg}
sidebar        = ${bg_dark}
player         = ${bg_dark}
card           = ${bg_highlight}
shadow         = ${bg_dark1}
main-secondary = ${bg_visual}
selected-row   = ${bg_highlight}
button         = ${orange}
button-active  = ${green}
button-disabled = ${dark3}
nav-active     = ${orange}
play-button    = ${green}
tab-active     = ${orange}
notification   = ${orange}
playback-bar   = ${orange}
misc           = ${comment}
]=],
    spicetifyColors
  )

  return spicetify
end

return M
