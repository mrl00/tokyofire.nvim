local colors = {
  _name = "tokyonight_hell",
  _style = "hell",
  bg = "#1c0f0a",
  bg_dark = "#150b07",
  bg_dark1 = "#0f0704",
  bg_float = "#150b07",
  bg_highlight = "#331a12",
  bg_popup = "#150b07",
  bg_search = "#e88855",
  bg_sidebar = "#150b07",
  bg_statusline = "#150b07",
  bg_visual = "#6e3f28",
  black = "#160c08",
  blue = "#ffeedd",
  blue0 = "#e88855",
  blue1 = "#ffaa77",
  blue2 = "#ff8833",
  blue5 = "#ffcc44",
  blue6 = "#ee4444",
  blue7 = "#4a2218",
  border = "#160c08",
  border_highlight = "#d28b61",
  comment = "#cc7755",
  cyan = "#ff9966",
  dark3 = "#885544",
  dark5 = "#bb8877",
  diff = {
    add = "#4f2d1d",
    change = "#23120c",
    delete = "#4c1814",
    text = "#4a2218"
  },
  error = "#dd3333",
  fg = "#fff0e5",
  fg_dark = "#eebb99",
  fg_float = "#fff0e5",
  fg_gutter = "#331a12",
  fg_sidebar = "#eebb99",
  git = {
    add = "#ff7744",
    change = "#ff8833",
    delete = "#ff4444",
    ignore = "#885544"
  },
  green = "#ff7744",
  green1 = "#ff8833",
  green2 = "#e88855",
  hint = "#ff7744",
  info = "#ff8833",
  magenta = "#ee3333",
  magenta2 = "#dd2222",
  none = "NONE",
  orange = "#ff7733",
  purple = "#ee3333",
  rainbow = { "#ffeedd", "#ffbb33", "#ff7744", "#ff7744", "#ee3333", "#ee3333", "#ff7733", "#ff4444" },
  red = "#ff4444",
  red1 = "#dd3333",
  teal = "#ff7744",
  terminal = {
    black = "#160c08",
    black_bright = "#4a2218",
    blue = "#ffeedd",
    blue_bright = "#ffffff",
    cyan = "#ff9966",
    cyan_bright = "#ffad8b",
    green = "#ff7744",
    green_bright = "#ff8e6e",
    magenta = "#ee3333",
    magenta_bright = "#ff4343",
    red = "#ff4444",
    red_bright = "#ff6565",
    white = "#eebb99",
    white_bright = "#fff0e5",
    yellow = "#ffbb33",
    yellow_bright = "#ffcc87"
  },
  terminal_black = "#4a2218",
  todo = "#ffeedd",
  warning = "#ffbb33",
  yellow = "#ffbb33"
}

local highlights = {
  ["@annotation"] = "PreProc",
  ["@attribute"] = "PreProc",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#dd3333"
  },
  ["@comment.hint"] = {
    fg = "#ff7744"
  },
  ["@comment.info"] = {
    fg = "#ff8833"
  },
  ["@comment.note"] = {
    fg = "#ff7744"
  },
  ["@comment.todo"] = {
    fg = "#ffeedd"
  },
  ["@comment.warning"] = {
    fg = "#ffbb33"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#ee3333"
  },
  ["@constructor.tsx"] = {
    fg = "#ffaa77"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = "Special",
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = "#ee3333",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#ee3333"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#ffeedd"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = {
    fg = "#ffbf98"
  },
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.namespace.python"] = "@variable",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = {
    sp = "#dd3333",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#d28b61"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#d28b61"
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.emphasis"] = {
    italic = true
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = {
    bg = "#33251f",
    bold = true,
    fg = "#ffeedd"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#33200e",
    bold = true,
    fg = "#ffbb33"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#331910",
    bold = true,
    fg = "#ff7744"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#331910",
    bold = true,
    fg = "#ff7744"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#31130e",
    bold = true,
    fg = "#ee3333"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#31130e",
    bold = true,
    fg = "#ee3333"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#33190e",
    bold = true,
    fg = "#ff7733"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#331410",
    bold = true,
    fg = "#ff4444"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#ff7744"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#ffcc44"
  },
  ["@markup.list.checked"] = {
    fg = "#ff8833"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#ff7733"
  },
  ["@markup.list.unchecked"] = {
    fg = "#ffeedd"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#4a2218",
    fg = "#ffeedd"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = "Include",
  ["@module.builtin"] = {
    fg = "#ff4444"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#ffcc44"
  },
  ["@property"] = {
    fg = "#ff8833"
  },
  ["@punctuation.bracket"] = {
    fg = "#eebb99"
  },
  ["@punctuation.delimiter"] = {
    fg = "#ffcc44"
  },
  ["@punctuation.special"] = {
    fg = "#ffcc44"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#ff7733"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#ffbb33"
  },
  ["@string.escape"] = {
    fg = "#ee3333"
  },
  ["@string.regexp"] = {
    fg = "#ee4444"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#bbab9e"
  },
  ["@tag.javascript"] = {
    fg = "#ff4444"
  },
  ["@tag.tsx"] = {
    fg = "#ff4444"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#d28b61"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#fff0e5"
  },
  ["@variable.builtin"] = {
    fg = "#ff4444"
  },
  ["@variable.member"] = {
    fg = "#ff8833"
  },
  ["@variable.parameter"] = {
    fg = "#ffbb33"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#ffc657"
  },
  ALEErrorSign = {
    fg = "#dd3333"
  },
  ALEWarningSign = {
    fg = "#ffbb33"
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#331a12"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#fff0e5"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#ff9966"
  },
  AlphaFooter = {
    fg = "#ffaa77"
  },
  AlphaHeader = {
    fg = "#ffeedd"
  },
  AlphaHeaderLabel = {
    fg = "#ff7733"
  },
  AlphaShortcut = {
    fg = "#ff7733"
  },
  BlinkCmpDoc = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  BlinkCmpDocBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  BlinkCmpGhostText = {
    fg = "#4a2218"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#ff7744"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#ff7744"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#eebb99"
  },
  BlinkCmpKindEnum = "LspKindEnum",
  BlinkCmpKindEnumMember = "LspKindEnumMember",
  BlinkCmpKindEvent = "LspKindEvent",
  BlinkCmpKindField = "LspKindField",
  BlinkCmpKindFile = "LspKindFile",
  BlinkCmpKindFolder = "LspKindFolder",
  BlinkCmpKindFunction = "LspKindFunction",
  BlinkCmpKindInterface = "LspKindInterface",
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = "LspKindKeyword",
  BlinkCmpKindMethod = "LspKindMethod",
  BlinkCmpKindModule = "LspKindModule",
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = "LspKindOperator",
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = "LspKindProperty",
  BlinkCmpKindReference = "LspKindReference",
  BlinkCmpKindSnippet = "LspKindSnippet",
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = "LspKindStruct",
  BlinkCmpKindSupermaven = {
    bg = "NONE",
    fg = "#ff7744"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#ff7744"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#fff0e5"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#331a12",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#ffaa77"
  },
  BlinkCmpMenu = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  BlinkCmpMenuBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  BlinkCmpSignatureHelp = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  Bold = {
    bold = true,
    fg = "#fff0e5"
  },
  BufferAlternate = {
    bg = "#331a12",
    fg = "#fff0e5"
  },
  BufferAlternateADDED = {
    bg = "#331a12",
    fg = "#ff7744"
  },
  BufferAlternateCHANGED = {
    bg = "#331a12",
    fg = "#ff8833"
  },
  BufferAlternateDELETED = {
    bg = "#331a12",
    fg = "#ff4444"
  },
  BufferAlternateERROR = {
    bg = "#331a12",
    fg = "#dd3333"
  },
  BufferAlternateHINT = {
    bg = "#331a12",
    fg = "#ff7744"
  },
  BufferAlternateINFO = {
    bg = "#331a12",
    fg = "#ff8833"
  },
  BufferAlternateIndex = {
    bg = "#331a12",
    fg = "#ff8833"
  },
  BufferAlternateMod = {
    bg = "#331a12",
    fg = "#ffbb33"
  },
  BufferAlternateSign = {
    bg = "#331a12",
    fg = "#ff8833"
  },
  BufferAlternateTarget = {
    bg = "#331a12",
    fg = "#ff4444"
  },
  BufferAlternateWARN = {
    bg = "#331a12",
    fg = "#ffbb33"
  },
  BufferCurrent = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  BufferCurrentADDED = {
    bg = "#1c0f0a",
    fg = "#ff7744"
  },
  BufferCurrentCHANGED = {
    bg = "#1c0f0a",
    fg = "#ff8833"
  },
  BufferCurrentDELETED = {
    bg = "#1c0f0a",
    fg = "#ff4444"
  },
  BufferCurrentERROR = {
    bg = "#1c0f0a",
    fg = "#dd3333"
  },
  BufferCurrentHINT = {
    bg = "#1c0f0a",
    fg = "#ff7744"
  },
  BufferCurrentINFO = {
    bg = "#1c0f0a",
    fg = "#ff8833"
  },
  BufferCurrentIndex = {
    bg = "#1c0f0a",
    fg = "#ff8833"
  },
  BufferCurrentMod = {
    bg = "#1c0f0a",
    fg = "#ffbb33"
  },
  BufferCurrentSign = {
    bg = "#1c0f0a",
    fg = "#1c0f0a"
  },
  BufferCurrentTarget = {
    bg = "#1c0f0a",
    fg = "#ff4444"
  },
  BufferCurrentWARN = {
    bg = "#1c0f0a",
    fg = "#ffbb33"
  },
  BufferInactive = {
    bg = "#25130d",
    fg = "#9b7061"
  },
  BufferInactiveADDED = {
    bg = "#25130d",
    fg = "#d26238"
  },
  BufferInactiveCHANGED = {
    bg = "#25130d",
    fg = "#d2702b"
  },
  BufferInactiveDELETED = {
    bg = "#25130d",
    fg = "#d23938"
  },
  BufferInactiveERROR = {
    bg = "#25130d",
    fg = "#b62c2b"
  },
  BufferInactiveHINT = {
    bg = "#25130d",
    fg = "#d26238"
  },
  BufferInactiveINFO = {
    bg = "#25130d",
    fg = "#d2702b"
  },
  BufferInactiveIndex = {
    bg = "#25130d",
    fg = "#bb8877"
  },
  BufferInactiveMod = {
    bg = "#25130d",
    fg = "#d2992b"
  },
  BufferInactiveSign = {
    bg = "#25130d",
    fg = "#1c0f0a"
  },
  BufferInactiveTarget = {
    bg = "#25130d",
    fg = "#ff4444"
  },
  BufferInactiveWARN = {
    bg = "#25130d",
    fg = "#d2992b"
  },
  BufferLineIndicatorSelected = {
    fg = "#ff8833"
  },
  BufferOffset = {
    bg = "#150b07",
    fg = "#bb8877"
  },
  BufferTabpageFill = {
    bg = "#2e1810",
    fg = "#bb8877"
  },
  BufferTabpages = {
    bg = "#150b07",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  BufferVisibleADDED = {
    bg = "#150b07",
    fg = "#ff7744"
  },
  BufferVisibleCHANGED = {
    bg = "#150b07",
    fg = "#ff8833"
  },
  BufferVisibleDELETED = {
    bg = "#150b07",
    fg = "#ff4444"
  },
  BufferVisibleERROR = {
    bg = "#150b07",
    fg = "#dd3333"
  },
  BufferVisibleHINT = {
    bg = "#150b07",
    fg = "#ff7744"
  },
  BufferVisibleINFO = {
    bg = "#150b07",
    fg = "#ff8833"
  },
  BufferVisibleIndex = {
    bg = "#150b07",
    fg = "#ff8833"
  },
  BufferVisibleMod = {
    bg = "#150b07",
    fg = "#ffbb33"
  },
  BufferVisibleSign = {
    bg = "#150b07",
    fg = "#ff8833"
  },
  BufferVisibleTarget = {
    bg = "#150b07",
    fg = "#ff4444"
  },
  BufferVisibleWARN = {
    bg = "#150b07",
    fg = "#ffbb33"
  },
  Character = {
    fg = "#ff7744"
  },
  CmpDocumentation = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  CmpDocumentationBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  CmpGhostText = {
    fg = "#4a2218"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#fff0e5"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#331a12",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#ffaa77"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#ffaa77"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#ff7744"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#ff7744"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#eebb99"
  },
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindSupermaven = {
    bg = "NONE",
    fg = "#ff7744"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#ff7744"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#cc7755"
  },
  CodeBlock = {
    bg = "#150b07"
  },
  CodeiumSuggestion = {
    fg = "#4a2218"
  },
  ColorColumn = {
    bg = "#160c08"
  },
  Comment = {
    fg = "#cc7755",
    italic = true
  },
  ComplHint = {
    fg = "#4a2218"
  },
  Conceal = {
    fg = "#bb8877"
  },
  Constant = {
    fg = "#ff7733"
  },
  CopilotAnnotation = {
    fg = "#4a2218"
  },
  CopilotSuggestion = {
    fg = "#4a2218"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#fff0e5",
    fg = "#1c0f0a"
  },
  CursorColumn = {
    bg = "#331a12"
  },
  CursorIM = {
    bg = "#fff0e5",
    fg = "#1c0f0a"
  },
  CursorLine = {
    bg = "#331a12"
  },
  CursorLineNr = {
    bold = true,
    fg = "#ff7733"
  },
  DapStoppedLine = {
    bg = "#33200e"
  },
  DashboardDesc = {
    fg = "#ff9966"
  },
  DashboardFiles = {
    fg = "#ffeedd"
  },
  DashboardFooter = {
    fg = "#ffaa77"
  },
  DashboardHeader = {
    fg = "#ffeedd"
  },
  DashboardIcon = {
    fg = "#ff9966"
  },
  DashboardKey = {
    fg = "#ff7733"
  },
  DashboardMruIcon = {
    fg = "#ee3333"
  },
  DashboardMruTitle = {
    fg = "#ff9966"
  },
  DashboardProjectIcon = {
    fg = "#ffbb33"
  },
  DashboardProjectTitle = {
    fg = "#ff9966"
  },
  DashboardProjectTitleIcon = {
    fg = "#ff7733"
  },
  DashboardShortCut = {
    fg = "#ff9966"
  },
  DashboardShortCutIcon = {
    fg = "#ee3333"
  },
  Debug = {
    fg = "#ff7733"
  },
  DefinitionCount = {
    fg = "#ee3333"
  },
  DefinitionIcon = {
    fg = "#ffeedd"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#dd3333"
  },
  DiagnosticHint = {
    fg = "#ff7744"
  },
  DiagnosticInfo = {
    fg = "#ff8833"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#dd3333",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#ff7744",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#ff8833",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#ffbb33",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#4a2218"
  },
  DiagnosticVirtualTextError = {
    bg = "#2f130e",
    fg = "#dd3333"
  },
  DiagnosticVirtualTextHint = {
    bg = "#331910",
    fg = "#ff7744"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#331b0e",
    fg = "#ff8833"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#33200e",
    fg = "#ffbb33"
  },
  DiagnosticWarn = {
    fg = "#ffbb33"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#4f2d1d"
  },
  DiffChange = {
    bg = "#23120c"
  },
  DiffDelete = {
    bg = "#4c1814"
  },
  DiffText = {
    bg = "#4a2218"
  },
  Directory = {
    fg = "#ffeedd"
  },
  EndOfBuffer = {
    fg = "#1c0f0a"
  },
  Error = {
    fg = "#dd3333"
  },
  ErrorMsg = {
    fg = "#dd3333"
  },
  FlashBackdrop = {
    fg = "#885544"
  },
  FlashLabel = {
    bg = "#dd2222",
    bold = true,
    fg = "#fff0e5"
  },
  FloatBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  FloatTitle = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  FoldColumn = {
    bg = "#1c0f0a",
    fg = "#cc7755"
  },
  Folded = {
    bg = "#331a12",
    fg = "#ffeedd"
  },
  Foo = {
    bg = "#dd2222",
    fg = "#fff0e5"
  },
  Function = {
    fg = "#ffeedd"
  },
  FzfLuaBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#eebb99"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#fff0e5"
  },
  FzfLuaFzfPointer = {
    fg = "#dd2222"
  },
  FzfLuaFzfSeparator = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  FzfLuaTitle = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  GitGutterAdd = {
    fg = "#ff7744"
  },
  GitGutterAddLineNr = {
    fg = "#ff7744"
  },
  GitGutterChange = {
    fg = "#ff8833"
  },
  GitGutterChangeLineNr = {
    fg = "#ff8833"
  },
  GitGutterDelete = {
    fg = "#ff4444"
  },
  GitGutterDeleteLineNr = {
    fg = "#ff4444"
  },
  GitSignsAdd = {
    fg = "#ff7744"
  },
  GitSignsChange = {
    fg = "#ff8833"
  },
  GitSignsDelete = {
    fg = "#ff4444"
  },
  GlyphPalette1 = {
    fg = "#dd3333"
  },
  GlyphPalette2 = {
    fg = "#ff7744"
  },
  GlyphPalette3 = {
    fg = "#ffbb33"
  },
  GlyphPalette4 = {
    fg = "#ffeedd"
  },
  GlyphPalette6 = {
    fg = "#ff8833"
  },
  GlyphPalette7 = {
    fg = "#fff0e5"
  },
  GlyphPalette9 = {
    fg = "#ff4444"
  },
  GrugFarHelpHeader = {
    fg = "#cc7755"
  },
  GrugFarHelpHeaderKey = {
    fg = "#ff9966"
  },
  GrugFarInputLabel = {
    fg = "#ffaa77"
  },
  GrugFarInputPlaceholder = {
    fg = "#885544"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#ff8833"
  },
  GrugFarResultsHeader = {
    fg = "#ff7733"
  },
  GrugFarResultsLineColumn = {
    fg = "#885544"
  },
  GrugFarResultsLineNo = {
    fg = "#885544"
  },
  GrugFarResultsMatch = {
    bg = "#ff4444",
    fg = "#160c08"
  },
  GrugFarResultsStats = {
    fg = "#ffeedd"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#271a15"
  },
  Headline2 = {
    bg = "#27180c"
  },
  Headline3 = {
    bg = "#27140d"
  },
  Headline4 = {
    bg = "#27140d"
  },
  Headline5 = {
    bg = "#27110c"
  },
  Headline6 = {
    bg = "#27110c"
  },
  Headline7 = {
    bg = "#27140c"
  },
  Headline8 = {
    bg = "#27120d"
  },
  HopNextKey = {
    bold = true,
    fg = "#dd2222"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#ff8833"
  },
  HopNextKey2 = {
    fg = "#a45823"
  },
  HopUnmatched = {
    fg = "#885544"
  },
  IblIndent = {
    fg = "#331a12",
    nocombine = true
  },
  IblScope = {
    fg = "#ffaa77",
    nocombine = true
  },
  Identifier = {
    fg = "#ee3333"
  },
  IlluminatedWordRead = {
    bg = "#331a12"
  },
  IlluminatedWordText = {
    bg = "#331a12"
  },
  IlluminatedWordWrite = {
    bg = "#331a12"
  },
  IncSearch = {
    bg = "#ff7733",
    fg = "#160c08"
  },
  IndentBlanklineChar = {
    fg = "#331a12",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#ffaa77",
    nocombine = true
  },
  IndentLine = {
    fg = "#331a12",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#ffaa77",
    nocombine = true
  },
  Italic = {
    fg = "#fff0e5",
    italic = true
  },
  Keyword = {
    fg = "#ff9966",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#dd2222"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#331a12"
  },
  LeapBackdrop = {
    fg = "#885544"
  },
  LeapLabel = {
    bold = true,
    fg = "#dd2222"
  },
  LeapMatch = {
    bg = "#dd2222",
    bold = true,
    fg = "#fff0e5"
  },
  LineNr = {
    fg = "#331a12"
  },
  LineNrAbove = {
    fg = "#331a12"
  },
  LineNrBelow = {
    fg = "#331a12"
  },
  LspCodeLens = {
    fg = "#cc7755"
  },
  LspFloatWinBorder = {
    fg = "#d28b61"
  },
  LspFloatWinNormal = {
    bg = "#150b07"
  },
  LspInfoBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  LspInlayHint = {
    bg = "#21110b",
    fg = "#885544"
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = "#331a12"
  },
  LspReferenceText = {
    bg = "#331a12"
  },
  LspReferenceWrite = {
    bg = "#331a12"
  },
  LspSagaBorderTitle = {
    fg = "#ff9966"
  },
  LspSagaCodeActionBorder = {
    fg = "#ffeedd"
  },
  LspSagaCodeActionContent = {
    fg = "#ee3333"
  },
  LspSagaCodeActionTitle = {
    fg = "#ffaa77"
  },
  LspSagaDefPreviewBorder = {
    fg = "#ff7744"
  },
  LspSagaFinderSelection = {
    fg = "#6e3f28"
  },
  LspSagaHoverBorder = {
    fg = "#ffeedd"
  },
  LspSagaRenameBorder = {
    fg = "#ff7744"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff4444"
  },
  LspSignatureActiveParameter = {
    bg = "#3d2216",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#ff7733"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#331a12"
  },
  MiniCursorwordCurrent = {
    bg = "#331a12"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#ff4444",
    fg = "#160c08"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#ff7744",
    fg = "#160c08"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#ff7744"
  },
  MiniDiffSignChange = {
    fg = "#ff8833"
  },
  MiniDiffSignDelete = {
    fg = "#ff4444"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#fff0e5"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#150b07",
    bold = true,
    fg = "#d28b61"
  },
  MiniHipatternsFixme = {
    bg = "#dd3333",
    bold = true,
    fg = "#160c08"
  },
  MiniHipatternsHack = {
    bg = "#ffbb33",
    bold = true,
    fg = "#160c08"
  },
  MiniHipatternsNote = {
    bg = "#ff7744",
    bold = true,
    fg = "#160c08"
  },
  MiniHipatternsTodo = {
    bg = "#ff8833",
    bold = true,
    fg = "#160c08"
  },
  MiniIconsAzure = {
    fg = "#ff8833"
  },
  MiniIconsBlue = {
    fg = "#ffeedd"
  },
  MiniIconsCyan = {
    fg = "#ff7744"
  },
  MiniIconsGreen = {
    fg = "#ff7744"
  },
  MiniIconsGrey = {
    fg = "#fff0e5"
  },
  MiniIconsOrange = {
    fg = "#ff7733"
  },
  MiniIconsPurple = {
    fg = "#ee3333"
  },
  MiniIconsRed = {
    fg = "#ff4444"
  },
  MiniIconsYellow = {
    fg = "#ffbb33"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#ffaa77",
    nocombine = true
  },
  MiniJump = {
    bg = "#dd2222",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#dd2222",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#150b07",
    fg = "#ff7744",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#ff7733",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#150b07",
    fg = "#ff7744"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#150b07",
    fg = "#ff8833"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#ffbb33",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#ffeedd"
  },
  MiniStarterInactive = {
    fg = "#cc7755",
    italic = true
  },
  MiniStarterItem = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  MiniStarterItemBullet = {
    fg = "#d28b61"
  },
  MiniStarterItemPrefix = {
    fg = "#ffbb33"
  },
  MiniStarterQuery = {
    fg = "#ff8833"
  },
  MiniStarterSection = {
    fg = "#ffaa77"
  },
  MiniStatuslineDevinfo = {
    bg = "#331a12",
    fg = "#eebb99"
  },
  MiniStatuslineFileinfo = {
    bg = "#331a12",
    fg = "#eebb99"
  },
  MiniStatuslineFilename = {
    bg = "#331a12",
    fg = "#eebb99"
  },
  MiniStatuslineInactive = {
    bg = "#150b07",
    fg = "#ffeedd"
  },
  MiniStatuslineModeCommand = {
    bg = "#ffbb33",
    bold = true,
    fg = "#160c08"
  },
  MiniStatuslineModeInsert = {
    bg = "#ff7744",
    bold = true,
    fg = "#160c08"
  },
  MiniStatuslineModeNormal = {
    bg = "#ffeedd",
    bold = true,
    fg = "#160c08"
  },
  MiniStatuslineModeOther = {
    bg = "#ff7744",
    bold = true,
    fg = "#160c08"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff4444",
    bold = true,
    fg = "#160c08"
  },
  MiniStatuslineModeVisual = {
    bg = "#ee3333",
    bold = true,
    fg = "#160c08"
  },
  MiniSurround = {
    bg = "#ff7733",
    fg = "#160c08"
  },
  MiniTablineCurrent = {
    bg = "#331a12",
    fg = "#fff0e5"
  },
  MiniTablineFill = {
    bg = "#160c08"
  },
  MiniTablineHidden = {
    bg = "#150b07",
    fg = "#bb8877"
  },
  MiniTablineModifiedCurrent = {
    bg = "#331a12",
    fg = "#ffbb33"
  },
  MiniTablineModifiedHidden = {
    bg = "#150b07",
    fg = "#bb8727"
  },
  MiniTablineModifiedVisible = {
    bg = "#150b07",
    fg = "#ffbb33"
  },
  MiniTablineTabpagesection = {
    bg = "#331a12",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff4444"
  },
  MiniTestPass = {
    bold = true,
    fg = "#ff7744"
  },
  MiniTrailspace = {
    bg = "#ff4444"
  },
  ModeMsg = {
    bold = true,
    fg = "#eebb99"
  },
  MoreMsg = {
    fg = "#ffeedd"
  },
  MsgArea = {
    fg = "#eebb99"
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = "#fff0e5"
  },
  NavicText = {
    bg = "NONE",
    fg = "#fff0e5"
  },
  NeoTreeDimText = {
    fg = "#331a12"
  },
  NeoTreeFileName = {
    fg = "#eebb99"
  },
  NeoTreeGitModified = {
    fg = "#ff7733"
  },
  NeoTreeGitStaged = {
    fg = "#ff8833"
  },
  NeoTreeGitUntracked = {
    fg = "#ee3333"
  },
  NeoTreeNormal = {
    bg = "#150b07",
    fg = "#eebb99"
  },
  NeoTreeNormalNC = {
    bg = "#150b07",
    fg = "#eebb99"
  },
  NeoTreeTabActive = {
    bg = "#150b07",
    bold = true,
    fg = "#ffeedd"
  },
  NeoTreeTabInactive = {
    bg = "#110906",
    fg = "#885544"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#150b07",
    fg = "#ffeedd"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#110906",
    fg = "#1c0f0a"
  },
  NeogitBranch = {
    fg = "#ee3333"
  },
  NeogitDiffAddHighlight = {
    bg = "#4f2d1d",
    fg = "#ff7744"
  },
  NeogitDiffContextHighlight = {
    bg = "#28150e",
    fg = "#eebb99"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#4c1814",
    fg = "#ff4444"
  },
  NeogitHunkHeader = {
    bg = "#331a12",
    fg = "#fff0e5"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#331a12",
    fg = "#ffeedd"
  },
  NeogitRemote = {
    fg = "#ee3333"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#ee3333"
  },
  NeotestBorder = {
    fg = "#ffeedd"
  },
  NeotestDir = {
    fg = "#ffeedd"
  },
  NeotestExpandMarker = {
    fg = "#eebb99"
  },
  NeotestFailed = {
    fg = "#ff4444"
  },
  NeotestFile = {
    fg = "#ff7744"
  },
  NeotestFocused = {
    fg = "#ffbb33"
  },
  NeotestIndent = {
    fg = "#eebb99"
  },
  NeotestMarked = {
    fg = "#ffeedd"
  },
  NeotestNamespace = {
    fg = "#e88855"
  },
  NeotestPassed = {
    fg = "#ff7744"
  },
  NeotestRunning = {
    fg = "#ffbb33"
  },
  NeotestSkipped = {
    fg = "#ffeedd"
  },
  NeotestTarget = {
    fg = "#ffeedd"
  },
  NeotestTest = {
    fg = "#eebb99"
  },
  NeotestWinSelect = {
    fg = "#ffeedd"
  },
  NoiceCmdlineIconInput = {
    fg = "#ffbb33"
  },
  NoiceCmdlineIconLua = {
    fg = "#ffaa77"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#ffbb33"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#ffaa77"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#ffbb33"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#ffaa77"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#eebb99"
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NonText = {
    fg = "#885544"
  },
  Normal = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NormalFloat = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  NormalNC = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NormalSB = {
    bg = "#150b07",
    fg = "#eebb99"
  },
  NotifyBackground = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NotifyDEBUGBody = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NotifyDEBUGBorder = {
    bg = "#1c0f0a",
    fg = "#512e21"
  },
  NotifyDEBUGIcon = {
    fg = "#cc7755"
  },
  NotifyDEBUGTitle = {
    fg = "#cc7755"
  },
  NotifyERRORBody = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NotifyERRORBorder = {
    bg = "#1c0f0a",
    fg = "#561a16"
  },
  NotifyERRORIcon = {
    fg = "#dd3333"
  },
  NotifyERRORTitle = {
    fg = "#dd3333"
  },
  NotifyINFOBody = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NotifyINFOBorder = {
    bg = "#1c0f0a",
    fg = "#603316"
  },
  NotifyINFOIcon = {
    fg = "#ff8833"
  },
  NotifyINFOTitle = {
    fg = "#ff8833"
  },
  NotifyTRACEBody = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NotifyTRACEBorder = {
    bg = "#1c0f0a",
    fg = "#5b1a16"
  },
  NotifyTRACEIcon = {
    fg = "#ee3333"
  },
  NotifyTRACETitle = {
    fg = "#ee3333"
  },
  NotifyWARNBody = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  NotifyWARNBorder = {
    bg = "#1c0f0a",
    fg = "#604316"
  },
  NotifyWARNIcon = {
    fg = "#ffbb33"
  },
  NotifyWARNTitle = {
    fg = "#ffbb33"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#ffeedd"
  },
  NvimTreeGitDeleted = {
    fg = "#ff4444"
  },
  NvimTreeGitDirty = {
    fg = "#ff8833"
  },
  NvimTreeGitNew = {
    fg = "#ff7744"
  },
  NvimTreeImageFile = {
    fg = "#eebb99"
  },
  NvimTreeIndentMarker = {
    fg = "#331a12"
  },
  NvimTreeNormal = {
    bg = "#150b07",
    fg = "#eebb99"
  },
  NvimTreeNormalNC = {
    bg = "#150b07",
    fg = "#eebb99"
  },
  NvimTreeOpenedFile = {
    bg = "#331a12"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#ffeedd"
  },
  NvimTreeSpecialFile = {
    fg = "#ee3333",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#ffeedd"
  },
  NvimTreeWinSeparator = {
    bg = "#150b07",
    fg = "#150b07"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#ffaa77"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#ff7733"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#ee3333"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#31130e",
    fg = "#ee3333"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#ffaa77"
  },
  Operator = {
    fg = "#ffcc44"
  },
  Pmenu = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  PmenuMatch = {
    bg = "#150b07",
    fg = "#ffaa77"
  },
  PmenuMatchSel = {
    bg = "#2e1810",
    fg = "#ffaa77"
  },
  PmenuSbar = {
    bg = "#211612"
  },
  PmenuSel = {
    bg = "#2e1810"
  },
  PmenuThumb = {
    bg = "#331a12"
  },
  PreProc = {
    fg = "#ff9966"
  },
  Question = {
    fg = "#ffeedd"
  },
  QuickFixLine = {
    bg = "#6e3f28",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#ffeedd"
  },
  RainbowDelimiterCyan = {
    fg = "#ff9966"
  },
  RainbowDelimiterGreen = {
    fg = "#ff7744"
  },
  RainbowDelimiterOrange = {
    fg = "#ff7733"
  },
  RainbowDelimiterRed = {
    fg = "#ff4444"
  },
  RainbowDelimiterViolet = {
    fg = "#ee3333"
  },
  RainbowDelimiterYellow = {
    fg = "#ffbb33"
  },
  ReferencesCount = {
    fg = "#ee3333"
  },
  ReferencesIcon = {
    fg = "#ffeedd"
  },
  RenderMarkdownBullet = {
    fg = "#ff7733"
  },
  RenderMarkdownCode = {
    bg = "#150b07"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#ff7733"
  },
  RenderMarkdownH1Bg = {
    bg = "#33251f"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#ffeedd"
  },
  RenderMarkdownH2Bg = {
    bg = "#33200e"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#ffbb33"
  },
  RenderMarkdownH3Bg = {
    bg = "#331910"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#ff7744"
  },
  RenderMarkdownH4Bg = {
    bg = "#331910"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#ff7744"
  },
  RenderMarkdownH5Bg = {
    bg = "#31130e"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#ee3333"
  },
  RenderMarkdownH6Bg = {
    bg = "#31130e"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#ee3333"
  },
  RenderMarkdownH7Bg = {
    bg = "#33190e"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#ff7733"
  },
  RenderMarkdownH8Bg = {
    bg = "#331410"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff4444"
  },
  RenderMarkdownTableHead = {
    fg = "#ff4444"
  },
  RenderMarkdownTableRow = {
    fg = "#ff7733"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#dd3333"
  },
  ScrollbarErrorHandle = {
    bg = "#331a12",
    fg = "#dd3333"
  },
  ScrollbarHandle = {
    bg = "#331a12",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#ff7744"
  },
  ScrollbarHintHandle = {
    bg = "#331a12",
    fg = "#ff7744"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#ff8833"
  },
  ScrollbarInfoHandle = {
    bg = "#331a12",
    fg = "#ff8833"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#ee3333"
  },
  ScrollbarMiscHandle = {
    bg = "#331a12",
    fg = "#ee3333"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ff7733"
  },
  ScrollbarSearchHandle = {
    bg = "#331a12",
    fg = "#ff7733"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#ffbb33"
  },
  ScrollbarWarnHandle = {
    bg = "#331a12",
    fg = "#ffbb33"
  },
  Search = {
    bg = "#e88855",
    fg = "#fff0e5"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#ff7744"
  },
  SidekickSignChange = {
    fg = "#ff8833"
  },
  SidekickSignDelete = {
    fg = "#ff4444"
  },
  SignColumn = {
    bg = "#1c0f0a",
    fg = "#331a12"
  },
  SignColumnSB = {
    bg = "#150b07",
    fg = "#331a12"
  },
  SnacksDashboardDesc = {
    fg = "#ff9966"
  },
  SnacksDashboardDir = {
    fg = "#885544"
  },
  SnacksDashboardFooter = {
    fg = "#ffaa77"
  },
  SnacksDashboardHeader = {
    fg = "#ffeedd"
  },
  SnacksDashboardIcon = {
    fg = "#ffaa77"
  },
  SnacksDashboardKey = {
    fg = "#ff7733"
  },
  SnacksDashboardSpecial = {
    fg = "#ee3333"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#ffaa77"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#331f15",
    fg = "#ffaa77"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#ffaa77"
  },
  SnacksIndent = {
    fg = "#331a12",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#ffeedd",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#ffbb33",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#ff7744",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#ff7744",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#ee3333",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#ee3333",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#ff7733",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ff4444",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#ffaa77",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#ffbb33"
  },
  SnacksInputIcon = {
    fg = "#ffaa77"
  },
  SnacksInputTitle = {
    fg = "#ffbb33"
  },
  SnacksNotifierBorderDebug = {
    bg = "#1c0f0a",
    fg = "#623928"
  },
  SnacksNotifierBorderError = {
    bg = "#1c0f0a",
    fg = "#691d1a"
  },
  SnacksNotifierBorderInfo = {
    bg = "#1c0f0a",
    fg = "#773f1a"
  },
  SnacksNotifierBorderTrace = {
    bg = "#1c0f0a",
    fg = "#701d1a"
  },
  SnacksNotifierBorderWarn = {
    bg = "#1c0f0a",
    fg = "#77541a"
  },
  SnacksNotifierDebug = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  SnacksNotifierError = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  SnacksNotifierIconDebug = {
    fg = "#cc7755"
  },
  SnacksNotifierIconError = {
    fg = "#dd3333"
  },
  SnacksNotifierIconInfo = {
    fg = "#ff8833"
  },
  SnacksNotifierIconTrace = {
    fg = "#ee3333"
  },
  SnacksNotifierIconWarn = {
    fg = "#ffbb33"
  },
  SnacksNotifierInfo = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  SnacksNotifierTitleDebug = {
    fg = "#cc7755"
  },
  SnacksNotifierTitleError = {
    fg = "#dd3333"
  },
  SnacksNotifierTitleInfo = {
    fg = "#ff8833"
  },
  SnacksNotifierTitleTrace = {
    fg = "#ee3333"
  },
  SnacksNotifierTitleWarn = {
    fg = "#ffbb33"
  },
  SnacksNotifierTrace = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  SnacksNotifierWarn = {
    bg = "#1c0f0a",
    fg = "#fff0e5"
  },
  SnacksPickerBoxTitle = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  SnacksPickerInputBorder = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  SnacksPickerInputTitle = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  SnacksPickerPickWin = {
    bg = "#e88855",
    bold = true,
    fg = "#fff0e5"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#dd2222",
    bold = true,
    fg = "#fff0e5"
  },
  SnacksPickerSelected = {
    fg = "#dd2222"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#331f15",
    fg = "#ffaa77"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#21110b",
    fg = "#885544"
  },
  SnacksProfilerIconInfo = {
    bg = "#603e2b",
    fg = "#ffaa77"
  },
  SnacksProfilerIconTrace = {
    bg = "#2a150e",
    fg = "#885544"
  },
  SnacksZenIcon = {
    fg = "#ee3333"
  },
  Sneak = {
    bg = "#ee3333",
    fg = "#331a12"
  },
  SneakScope = {
    bg = "#6e3f28"
  },
  Special = {
    fg = "#ffaa77"
  },
  SpecialKey = {
    fg = "#885544"
  },
  SpellBad = {
    sp = "#dd3333",
    undercurl = true
  },
  SpellCap = {
    sp = "#ffbb33",
    undercurl = true
  },
  SpellLocal = {
    sp = "#ff8833",
    undercurl = true
  },
  SpellRare = {
    sp = "#ff7744",
    undercurl = true
  },
  Statement = {
    fg = "#ee3333"
  },
  StatusLine = {
    bg = "#150b07",
    fg = "#eebb99"
  },
  StatusLineNC = {
    bg = "#150b07",
    fg = "#331a12"
  },
  String = {
    fg = "#ff7744"
  },
  Substitute = {
    bg = "#ff4444",
    fg = "#160c08"
  },
  SupermavenSuggestion = {
    fg = "#4a2218"
  },
  TabLine = {
    bg = "#150b07",
    fg = "#331a12"
  },
  TabLineFill = {
    bg = "#160c08"
  },
  TabLineSel = {
    bg = "#ffeedd",
    fg = "#160c08"
  },
  TargetWord = {
    fg = "#ff9966"
  },
  TelescopeBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  TelescopeNormal = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  TelescopePromptBorder = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  TelescopePromptTitle = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  TelescopeResultsComment = {
    fg = "#885544"
  },
  Title = {
    bold = true,
    fg = "#ffeedd"
  },
  Todo = {
    bg = "#ffbb33",
    fg = "#1c0f0a"
  },
  TreesitterContext = {
    bg = "#2e1810"
  },
  TroubleCount = {
    bg = "#331a12",
    fg = "#ee3333"
  },
  TroubleNormal = {
    bg = "#150b07",
    fg = "#fff0e5"
  },
  TroubleText = {
    fg = "#eebb99"
  },
  Type = {
    fg = "#ffaa77"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#160c08"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#ffbb33"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#ffeedd"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#ffbb33"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#ff7744"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#ff7744"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#ee3333"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#ee3333"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#ff7733"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#ff4444"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#ffbb33"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#ffeedd"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#ff7733"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#ffeedd"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#ff7744"
  },
  Visual = {
    bg = "#6e3f28"
  },
  VisualNOS = {
    bg = "#6e3f28"
  },
  WarningMsg = {
    fg = "#ffbb33"
  },
  WhichKey = {
    fg = "#ff9966"
  },
  WhichKeyDesc = {
    fg = "#ee3333"
  },
  WhichKeyGroup = {
    fg = "#ffeedd"
  },
  WhichKeyNormal = {
    bg = "#150b07"
  },
  WhichKeySeparator = {
    fg = "#cc7755"
  },
  WhichKeyValue = {
    fg = "#bb8877"
  },
  Whitespace = {
    fg = "#331a12"
  },
  WildMenu = {
    bg = "#6e3f28"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#160c08"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#331b0e",
    fg = "#ff8833"
  },
  debugPC = {
    bg = "#150b07"
  },
  diffAdded = {
    bg = "#4f2d1d",
    fg = "#ff7744"
  },
  diffChanged = {
    bg = "#23120c",
    fg = "#ff8833"
  },
  diffFile = {
    fg = "#ffeedd"
  },
  diffIndexLine = {
    fg = "#ee3333"
  },
  diffLine = {
    fg = "#cc7755"
  },
  diffNewFile = {
    bg = "#4f2d1d",
    fg = "#ffaa77"
  },
  diffOldFile = {
    bg = "#4c1814",
    fg = "#ffaa77"
  },
  diffRemoved = {
    bg = "#4c1814",
    fg = "#ff4444"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#dd3333"
  },
  healthSuccess = {
    fg = "#ff8833"
  },
  healthWarning = {
    fg = "#ffbb33"
  },
  helpCommand = {
    bg = "#4a2218",
    fg = "#ffeedd"
  },
  helpExample = {
    fg = "#cc7755"
  },
  htmlH1 = {
    bold = true,
    fg = "#ee3333"
  },
  htmlH2 = {
    bold = true,
    fg = "#ffeedd"
  },
  illuminatedCurWord = {
    bg = "#331a12"
  },
  illuminatedWord = {
    bg = "#331a12"
  },
  lCursor = {
    bg = "#fff0e5",
    fg = "#1c0f0a"
  },
  qfFileName = {
    fg = "#ffeedd"
  },
  qfLineNr = {
    fg = "#bb8877"
  }
}
