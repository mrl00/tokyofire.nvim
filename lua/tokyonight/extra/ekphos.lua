local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local ekphos = util.template(
    [[
# ${_style_name}
# Upstream: ${_upstream_url}

[base]
background = '${bg}'
background_secondary = '${bg_dark}'
foreground = '${fg}'
muted = '${comment}'

[accent]
primary = '${orange}'
secondary = '${magenta}'

[semantic]
error = '${red}'
warning = '${yellow}'
success = '${green}'
info = '${cyan}'

[ui]
border = '${bg_highlight}'
border_focused = '${orange}'
selection = '${bg_visual}'
cursor = '${fg}'

[ui.statusbar]
background = '${bg_dark}'
foreground = '${fg}'
brand = '${orange}'
mode = '${comment}'
separator = '${bg_highlight}'

[ui.dialog]
background = '${bg_dark}'
border = '${orange}'
title = '${orange}'
text = '${fg}'

[ui.sidebar]
background = '${bg_dark}'
item = '${fg_dark}'
item_selected = '${orange}'
folder = '${cyan}'
folder_expanded = '${cyan}'

[ui.content]
background = '${bg}'
text = '${fg}'
heading1 = '${orange}'
heading2 = '${green}'
heading3 = '${yellow}'
heading4 = '${magenta}'
link = '${cyan}'
link_invalid = '${red}'
code = '${green}'
code_background = '${bg_dark}'
blockquote = '${comment}'
list_marker = '${magenta}'

[ui.outline]
background = '${bg_dark}'
heading1 = '${orange}'
heading2 = '${green}'
heading3 = '${yellow}'
heading4 = '${magenta}'

[ui.search]
background = '${bg_dark}'
border = '${orange}'
input = '${fg}'
match_highlight = '${yellow}'
match_current = '${orange}'
match_count = '${comment}'

[ui.editor]
heading1 = '${orange}'
heading2 = '${green}'
heading3 = '${yellow}'
heading4 = '${magenta}'
heading5 = '${cyan}'
heading6 = '${comment}'
code = '${green}'
link = '${cyan}'
blockquote = '${comment}'
list_marker = '${magenta}'
bold = '${yellow}'
italic = '${cyan}'
]],
    colors
  )

  return ekphos
end

return M
