local colors = {
  _name = "tokyonight_hellfire",
  _style = "hellfire",
  bg = "#1c0f0a",
  bg_dark = "#150b07",
  bg_dark1 = "#0f0704",
  bg_float = "#150b07",
  bg_highlight = "#331a12",
  bg_popup = "#150b07",
  bg_search = "#d4764e",
  bg_sidebar = "#150b07",
  bg_statusline = "#150b07",
  bg_visual = "#663825",
  black = "#160c08",
  blue = "#ffeedd",
  blue0 = "#d4764e",
  blue1 = "#ffaa77",
  blue2 = "#ff8833",
  blue5 = "#ffcc44",
  blue6 = "#ff6699",
  blue7 = "#4a2218",
  border = "#160c08",
  border_highlight = "#d28b61",
  comment = "#996655",
  cyan = "#ff9966",
  dark3 = "#664433",
  dark5 = "#997766",
  diff = {
    add = "#4a291b",
    change = "#23120c",
    delete = "#4c1814",
    text = "#4a2218"
  },
  error = "#dd3333",
  fg = "#ffeedd",
  fg_dark = "#cc9988",
  fg_float = "#ffeedd",
  fg_gutter = "#331a12",
  fg_sidebar = "#cc9988",
  git = {
    add = "#ff7744",
    change = "#ff8833",
    delete = "#ff4444",
    ignore = "#664433"
  },
  green = "#ff7744",
  green1 = "#ff8833",
  green2 = "#d4764e",
  hint = "#ff7744",
  info = "#ff8833",
  magenta = "#ff5588",
  magenta2 = "#ff3377",
  none = "NONE",
  orange = "#ff7733",
  purple = "#ff5588",
  rainbow = { "#ffeedd", "#ffbb33", "#ff7744", "#ff7744", "#ff5588", "#ff5588", "#ff7733", "#ff4444" },
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
    magenta = "#ff5588",
    magenta_bright = "#ff7297",
    red = "#ff4444",
    red_bright = "#ff6565",
    white = "#cc9988",
    white_bright = "#ffeedd",
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
    fg = "#ff5588"
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
    fg = "#ff5588",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#ff5588"
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
    fg = "#ffbe96"
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
    bg = "#331617",
    bold = true,
    fg = "#ff5588"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#331617",
    bold = true,
    fg = "#ff5588"
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
    fg = "#cc9988"
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
    fg = "#ff5588"
  },
  ["@string.regexp"] = {
    fg = "#ff6699"
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
    fg = "#ffeedd"
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
    fg = "#ffc555"
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
    fg = "#ffeedd"
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
    fg = "#ffeedd"
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
    fg = "#cc9988"
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
    fg = "#ffeedd"
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
    fg = "#ffeedd"
  },
  BlinkCmpMenuBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  BlinkCmpSignatureHelp = {
    bg = "#150b07",
    fg = "#ffeedd"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#150b07",
    fg = "#d28b61"
  },
  Bold = {
    bold = true,
    fg = "#ffeedd"
  },
  BufferAlternate = {
    bg = "#331a12",
    fg = "#ffeedd"
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
    fg = "#ffeedd"
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
    fg = "#806254"
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
    fg = "#997766"
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
    fg = "#997766"
  },
  BufferTabpageFill = {
    bg = "#2e1810",
    fg = "#997766"
  },
  BufferTabpages = {
    bg = "#150b07",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#150b07",
    fg = "#ffeedd"
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
    fg = "#ffeedd"
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
    fg = "#ffeedd"
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
    fg = "#cc9988"
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
    fg = "#996655"
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
    fg = "#996655",
    italic = true
  },
  ComplHint = {
    fg = "#4a2218"
  },
  Conceal = {
    fg = "#997766"
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
    bg = "#ffeedd",
    fg = "#1c0f0a"
  },
  CursorColumn = {
    bg = "#331a12"
  },
  CursorIM = {
    bg = "#ffeedd",
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
    fg = "#ff5588"
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
    fg = "#ff5588"
  },
  Debug = {
    fg = "#ff7733"
  },
  DefinitionCount = {
    fg = "#ff5588"
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
    bg = "#4a291b"
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
    fg = "#664433"
  },
  FlashLabel = {
    bg = "#ff3377",
    bold = true,
    fg = "#ffeedd"
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
    fg = "#996655"
  },
  Folded = {
    bg = "#331a12",
    fg = "#ffeedd"
  },
  Foo = {
    bg = "#ff3377",
    fg = "#ffeedd"
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
    fg = "#cc9988"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#ffeedd"
  },
  FzfLuaFzfPointer = {
    fg = "#ff3377"
  },
  FzfLuaFzfSeparator = {
    bg = "#150b07",
    fg = "#ff7733"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#150b07",
    fg = "#ffeedd"
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
    fg = "#ffeedd"
  },
  GlyphPalette9 = {
    fg = "#ff4444"
  },
  GrugFarHelpHeader = {
    fg = "#996655"
  },
  GrugFarHelpHeaderKey = {
    fg = "#ff9966"
  },
  GrugFarInputLabel = {
    fg = "#ffaa77"
  },
  GrugFarInputPlaceholder = {
    fg = "#664433"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#ff8833"
  },
  GrugFarResultsHeader = {
    fg = "#ff7733"
  },
  GrugFarResultsLineColumn = {
    fg = "#664433"
  },
  GrugFarResultsLineNo = {
    fg = "#664433"
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
    bg = "#271310"
  },
  Headline6 = {
    bg = "#271310"
  },
  Headline7 = {
    bg = "#27140c"
  },
  Headline8 = {
    bg = "#27120d"
  },
  HopNextKey = {
    bold = true,
    fg = "#ff3377"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#ff8833"
  },
  HopNextKey2 = {
    fg = "#a45823"
  },
  HopUnmatched = {
    fg = "#664433"
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
    fg = "#ff5588"
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
    fg = "#ffeedd",
    italic = true
  },
  Keyword = {
    fg = "#ff9966",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ff3377"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#331a12"
  },
  LeapBackdrop = {
    fg = "#664433"
  },
  LeapLabel = {
    bold = true,
    fg = "#ff3377"
  },
  LeapMatch = {
    bg = "#ff3377",
    bold = true,
    fg = "#ffeedd"
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
    fg = "#996655"
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
    fg = "#664433"
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
    fg = "#ff5588"
  },
  LspSagaCodeActionTitle = {
    fg = "#ffaa77"
  },
  LspSagaDefPreviewBorder = {
    fg = "#ff7744"
  },
  LspSagaFinderSelection = {
    fg = "#663825"
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
    bg = "#3a1f15",
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
    fg = "#ffeedd"
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
    fg = "#ffeedd"
  },
  MiniIconsOrange = {
    fg = "#ff7733"
  },
  MiniIconsPurple = {
    fg = "#ff5588"
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
    bg = "#ff3377",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff3377",
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
    fg = "#996655",
    italic = true
  },
  MiniStarterItem = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
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
    fg = "#cc9988"
  },
  MiniStatuslineFileinfo = {
    bg = "#331a12",
    fg = "#cc9988"
  },
  MiniStatuslineFilename = {
    bg = "#331a12",
    fg = "#cc9988"
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
    bg = "#ff5588",
    bold = true,
    fg = "#160c08"
  },
  MiniSurround = {
    bg = "#ff7733",
    fg = "#160c08"
  },
  MiniTablineCurrent = {
    bg = "#331a12",
    fg = "#ffeedd"
  },
  MiniTablineFill = {
    bg = "#160c08"
  },
  MiniTablineHidden = {
    bg = "#150b07",
    fg = "#997766"
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
    fg = "#ffeedd"
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
    fg = "#cc9988"
  },
  MoreMsg = {
    fg = "#ffeedd"
  },
  MsgArea = {
    fg = "#cc9988"
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
    fg = "#ffeedd"
  },
  NavicText = {
    bg = "NONE",
    fg = "#ffeedd"
  },
  NeoTreeDimText = {
    fg = "#331a12"
  },
  NeoTreeFileName = {
    fg = "#cc9988"
  },
  NeoTreeGitModified = {
    fg = "#ff7733"
  },
  NeoTreeGitStaged = {
    fg = "#ff8833"
  },
  NeoTreeGitUntracked = {
    fg = "#ff5588"
  },
  NeoTreeNormal = {
    bg = "#150b07",
    fg = "#cc9988"
  },
  NeoTreeNormalNC = {
    bg = "#150b07",
    fg = "#cc9988"
  },
  NeoTreeTabActive = {
    bg = "#150b07",
    bold = true,
    fg = "#ffeedd"
  },
  NeoTreeTabInactive = {
    bg = "#110906",
    fg = "#664433"
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
    fg = "#ff5588"
  },
  NeogitDiffAddHighlight = {
    bg = "#4a291b",
    fg = "#ff7744"
  },
  NeogitDiffContextHighlight = {
    bg = "#28150e",
    fg = "#cc9988"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#4c1814",
    fg = "#ff4444"
  },
  NeogitHunkHeader = {
    bg = "#331a12",
    fg = "#ffeedd"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#331a12",
    fg = "#ffeedd"
  },
  NeogitRemote = {
    fg = "#ff5588"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#ff5588"
  },
  NeotestBorder = {
    fg = "#ffeedd"
  },
  NeotestDir = {
    fg = "#ffeedd"
  },
  NeotestExpandMarker = {
    fg = "#cc9988"
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
    fg = "#cc9988"
  },
  NeotestMarked = {
    fg = "#ffeedd"
  },
  NeotestNamespace = {
    fg = "#d4764e"
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
    fg = "#cc9988"
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
    fg = "#cc9988"
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
    fg = "#664433"
  },
  Normal = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  NormalFloat = {
    bg = "#150b07",
    fg = "#ffeedd"
  },
  NormalNC = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  NormalSB = {
    bg = "#150b07",
    fg = "#cc9988"
  },
  NotifyBackground = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  NotifyDEBUGBody = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  NotifyDEBUGBorder = {
    bg = "#1c0f0a",
    fg = "#422921"
  },
  NotifyDEBUGIcon = {
    fg = "#996655"
  },
  NotifyDEBUGTitle = {
    fg = "#996655"
  },
  NotifyERRORBody = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
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
    fg = "#ffeedd"
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
    fg = "#ffeedd"
  },
  NotifyTRACEBorder = {
    bg = "#1c0f0a",
    fg = "#602430"
  },
  NotifyTRACEIcon = {
    fg = "#ff5588"
  },
  NotifyTRACETitle = {
    fg = "#ff5588"
  },
  NotifyWARNBody = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
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
    fg = "#cc9988"
  },
  NvimTreeIndentMarker = {
    fg = "#331a12"
  },
  NvimTreeNormal = {
    bg = "#150b07",
    fg = "#cc9988"
  },
  NvimTreeNormalNC = {
    bg = "#150b07",
    fg = "#cc9988"
  },
  NvimTreeOpenedFile = {
    bg = "#331a12"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#ffeedd"
  },
  NvimTreeSpecialFile = {
    fg = "#ff5588",
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
    fg = "#ff5588"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#331617",
    fg = "#ff5588"
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
    fg = "#ffeedd"
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
    bg = "#663825",
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
    fg = "#ff5588"
  },
  RainbowDelimiterYellow = {
    fg = "#ffbb33"
  },
  ReferencesCount = {
    fg = "#ff5588"
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
    bg = "#331617"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#ff5588"
  },
  RenderMarkdownH6Bg = {
    bg = "#331617"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#ff5588"
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
    fg = "#ff5588"
  },
  ScrollbarMiscHandle = {
    bg = "#331a12",
    fg = "#ff5588"
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
    bg = "#d4764e",
    fg = "#ffeedd"
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
    fg = "#664433"
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
    fg = "#ff5588"
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
    fg = "#ff5588",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#ff5588",
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
    fg = "#4e3228"
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
    fg = "#772b3c"
  },
  SnacksNotifierBorderWarn = {
    bg = "#1c0f0a",
    fg = "#77541a"
  },
  SnacksNotifierDebug = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  SnacksNotifierError = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  SnacksNotifierIconDebug = {
    fg = "#996655"
  },
  SnacksNotifierIconError = {
    fg = "#dd3333"
  },
  SnacksNotifierIconInfo = {
    fg = "#ff8833"
  },
  SnacksNotifierIconTrace = {
    fg = "#ff5588"
  },
  SnacksNotifierIconWarn = {
    fg = "#ffbb33"
  },
  SnacksNotifierInfo = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  SnacksNotifierTitleDebug = {
    fg = "#996655"
  },
  SnacksNotifierTitleError = {
    fg = "#dd3333"
  },
  SnacksNotifierTitleInfo = {
    fg = "#ff8833"
  },
  SnacksNotifierTitleTrace = {
    fg = "#ff5588"
  },
  SnacksNotifierTitleWarn = {
    fg = "#ffbb33"
  },
  SnacksNotifierTrace = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
  },
  SnacksNotifierWarn = {
    bg = "#1c0f0a",
    fg = "#ffeedd"
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
    bg = "#d4764e",
    bold = true,
    fg = "#ffeedd"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ff3377",
    bold = true,
    fg = "#ffeedd"
  },
  SnacksPickerSelected = {
    fg = "#ff3377"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#331f15",
    fg = "#ffaa77"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#21110b",
    fg = "#664433"
  },
  SnacksProfilerIconInfo = {
    bg = "#603e2b",
    fg = "#ffaa77"
  },
  SnacksProfilerIconTrace = {
    bg = "#2a150e",
    fg = "#664433"
  },
  SnacksZenIcon = {
    fg = "#ff5588"
  },
  Sneak = {
    bg = "#ff5588",
    fg = "#331a12"
  },
  SneakScope = {
    bg = "#663825"
  },
  Special = {
    fg = "#ffaa77"
  },
  SpecialKey = {
    fg = "#664433"
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
    fg = "#ff5588"
  },
  StatusLine = {
    bg = "#150b07",
    fg = "#cc9988"
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
    fg = "#ffeedd"
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
    fg = "#664433"
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
    fg = "#ff5588"
  },
  TroubleNormal = {
    bg = "#150b07",
    fg = "#ffeedd"
  },
  TroubleText = {
    fg = "#cc9988"
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
    fg = "#ff5588"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#ff5588"
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
    bg = "#663825"
  },
  VisualNOS = {
    bg = "#663825"
  },
  WarningMsg = {
    fg = "#ffbb33"
  },
  WhichKey = {
    fg = "#ff9966"
  },
  WhichKeyDesc = {
    fg = "#ff5588"
  },
  WhichKeyGroup = {
    fg = "#ffeedd"
  },
  WhichKeyNormal = {
    bg = "#150b07"
  },
  WhichKeySeparator = {
    fg = "#996655"
  },
  WhichKeyValue = {
    fg = "#997766"
  },
  Whitespace = {
    fg = "#331a12"
  },
  WildMenu = {
    bg = "#663825"
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
    bg = "#4a291b",
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
    fg = "#ff5588"
  },
  diffLine = {
    fg = "#996655"
  },
  diffNewFile = {
    bg = "#4a291b",
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
    fg = "#996655"
  },
  htmlH1 = {
    bold = true,
    fg = "#ff5588"
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
    bg = "#ffeedd",
    fg = "#1c0f0a"
  },
  qfFileName = {
    fg = "#ffeedd"
  },
  qfLineNr = {
    fg = "#997766"
  }
}
