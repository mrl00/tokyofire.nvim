local colors = {
  _name = "tokyonight_fire",
  _style = "fire",
  bg = "#1a1615",
  bg_dark = "#141110",
  bg_dark1 = "#100d0c",
  bg_float = "#141110",
  bg_highlight = "#2c2523",
  bg_popup = "#141110",
  bg_search = "#c49a8a",
  bg_sidebar = "#141110",
  bg_statusline = "#141110",
  bg_visual = "#5e4b44",
  black = "#151211",
  blue = "#fbeee6",
  blue0 = "#c49a8a",
  blue1 = "#fbc5b0",
  blue2 = "#f5b041",
  blue5 = "#fde3a7",
  blue6 = "#ff9ebb",
  blue7 = "#3d2e2a",
  border = "#151211",
  border_highlight = "#cea291",
  comment = "#7f6c68",
  cyan = "#fbc5b0",
  dark3 = "#5c4f4b",
  dark5 = "#8a7a75",
  diff = {
    add = "#453732",
    change = "#1f1a18",
    delete = "#4c2d2c",
    text = "#3d2e2a"
  },
  error = "#e07070",
  fg = "#fbeee6",
  fg_dark = "#a08a85",
  fg_float = "#fbeee6",
  fg_gutter = "#2c2523",
  fg_sidebar = "#a08a85",
  git = {
    add = "#f1a98c",
    change = "#f5b041",
    delete = "#ff9994",
    ignore = "#5c4f4b"
  },
  green = "#f1a98c",
  green1 = "#f5b041",
  green2 = "#c49a8a",
  hint = "#f1a98c",
  info = "#f5b041",
  magenta = "#ff9ebb",
  magenta2 = "#ff7eb3",
  none = "NONE",
  orange = "#f5b041",
  purple = "#ff9ebb",
  rainbow = { "#fbeee6", "#fde3a7", "#f1a98c", "#f1a98c", "#ff9ebb", "#ff9ebb", "#f5b041", "#ff9994" },
  red = "#ff9994",
  red1 = "#e07070",
  teal = "#f1a98c",
  terminal = {
    black = "#151211",
    black_bright = "#3d2e2a",
    blue = "#fbeee6",
    blue_bright = "#fffffe",
    cyan = "#fbc5b0",
    cyan_bright = "#ffd6c8",
    green = "#f1a98c",
    green_bright = "#fdb89d",
    magenta = "#ff9ebb",
    magenta_bright = "#ffb3c9",
    red = "#ff9994",
    red_bright = "#ffaeaa",
    white = "#a08a85",
    white_bright = "#fbeee6",
    yellow = "#fde3a7",
    yellow_bright = "#fff3da"
  },
  terminal_black = "#3d2e2a",
  todo = "#fbeee6",
  warning = "#fde3a7",
  yellow = "#fde3a7"
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
    fg = "#e07070"
  },
  ["@comment.hint"] = {
    fg = "#f1a98c"
  },
  ["@comment.info"] = {
    fg = "#f5b041"
  },
  ["@comment.note"] = {
    fg = "#f1a98c"
  },
  ["@comment.todo"] = {
    fg = "#fbeee6"
  },
  ["@comment.warning"] = {
    fg = "#fde3a7"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#ff9ebb"
  },
  ["@constructor.tsx"] = {
    fg = "#fbc5b0"
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
    fg = "#ff9ebb",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#ff9ebb"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#fbeee6"
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
    fg = "#fbd1c0"
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
    sp = "#e07070",
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
    fg = "#cea291"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#cea291"
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
    bg = "#312c2a",
    bold = true,
    fg = "#fbeee6"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#312b24",
    bold = true,
    fg = "#fde3a7"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#302521",
    bold = true,
    fg = "#f1a98c"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#302521",
    bold = true,
    fg = "#f1a98c"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#312426",
    bold = true,
    fg = "#ff9ebb"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#312426",
    bold = true,
    fg = "#ff9ebb"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#302519",
    bold = true,
    fg = "#f5b041"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#312322",
    bold = true,
    fg = "#ff9994"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#f1a98c"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#fde3a7"
  },
  ["@markup.list.checked"] = {
    fg = "#f5b041"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#f5b041"
  },
  ["@markup.list.unchecked"] = {
    fg = "#fbeee6"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#3d2e2a",
    fg = "#fbeee6"
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
    fg = "#ff9994"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#fde3a7"
  },
  ["@property"] = {
    fg = "#f5b041"
  },
  ["@punctuation.bracket"] = {
    fg = "#a08a85"
  },
  ["@punctuation.delimiter"] = {
    fg = "#fde3a7"
  },
  ["@punctuation.special"] = {
    fg = "#fde3a7"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#f5b041"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#fde3a7"
  },
  ["@string.escape"] = {
    fg = "#ff9ebb"
  },
  ["@string.regexp"] = {
    fg = "#ff9ebb"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#b8ada7"
  },
  ["@tag.javascript"] = {
    fg = "#ff9994"
  },
  ["@tag.tsx"] = {
    fg = "#ff9994"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#cea291"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#fbeee6"
  },
  ["@variable.builtin"] = {
    fg = "#ff9994"
  },
  ["@variable.member"] = {
    fg = "#f5b041"
  },
  ["@variable.parameter"] = {
    fg = "#fde3a7"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#fde5b4"
  },
  ALEErrorSign = {
    fg = "#e07070"
  },
  ALEWarningSign = {
    fg = "#fde3a7"
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
    fg = "#2c2523"
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
    fg = "#fbeee6"
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
    fg = "#fbc5b0"
  },
  AlphaFooter = {
    fg = "#fbc5b0"
  },
  AlphaHeader = {
    fg = "#fbeee6"
  },
  AlphaHeaderLabel = {
    fg = "#f5b041"
  },
  AlphaShortcut = {
    fg = "#f5b041"
  },
  BlinkCmpDoc = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  BlinkCmpDocBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  BlinkCmpGhostText = {
    fg = "#3d2e2a"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#a08a85"
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
    fg = "#f1a98c"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#fbeee6"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#2c2523",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#fbc5b0"
  },
  BlinkCmpMenu = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  BlinkCmpMenuBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  BlinkCmpSignatureHelp = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  Bold = {
    bold = true,
    fg = "#fbeee6"
  },
  BufferAlternate = {
    bg = "#2c2523",
    fg = "#fbeee6"
  },
  BufferAlternateADDED = {
    bg = "#2c2523",
    fg = "#f1a98c"
  },
  BufferAlternateCHANGED = {
    bg = "#2c2523",
    fg = "#f5b041"
  },
  BufferAlternateDELETED = {
    bg = "#2c2523",
    fg = "#ff9994"
  },
  BufferAlternateERROR = {
    bg = "#2c2523",
    fg = "#e07070"
  },
  BufferAlternateHINT = {
    bg = "#2c2523",
    fg = "#f1a98c"
  },
  BufferAlternateINFO = {
    bg = "#2c2523",
    fg = "#f5b041"
  },
  BufferAlternateIndex = {
    bg = "#2c2523",
    fg = "#f5b041"
  },
  BufferAlternateMod = {
    bg = "#2c2523",
    fg = "#fde3a7"
  },
  BufferAlternateSign = {
    bg = "#2c2523",
    fg = "#f5b041"
  },
  BufferAlternateTarget = {
    bg = "#2c2523",
    fg = "#ff9994"
  },
  BufferAlternateWARN = {
    bg = "#2c2523",
    fg = "#fde3a7"
  },
  BufferCurrent = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  BufferCurrentADDED = {
    bg = "#1a1615",
    fg = "#f1a98c"
  },
  BufferCurrentCHANGED = {
    bg = "#1a1615",
    fg = "#f5b041"
  },
  BufferCurrentDELETED = {
    bg = "#1a1615",
    fg = "#ff9994"
  },
  BufferCurrentERROR = {
    bg = "#1a1615",
    fg = "#e07070"
  },
  BufferCurrentHINT = {
    bg = "#1a1615",
    fg = "#f1a98c"
  },
  BufferCurrentINFO = {
    bg = "#1a1615",
    fg = "#f5b041"
  },
  BufferCurrentIndex = {
    bg = "#1a1615",
    fg = "#f5b041"
  },
  BufferCurrentMod = {
    bg = "#1a1615",
    fg = "#fde3a7"
  },
  BufferCurrentSign = {
    bg = "#1a1615",
    fg = "#1a1615"
  },
  BufferCurrentTarget = {
    bg = "#1a1615",
    fg = "#ff9994"
  },
  BufferCurrentWARN = {
    bg = "#1a1615",
    fg = "#fde3a7"
  },
  BufferInactive = {
    bg = "#211c1b",
    fg = "#746662"
  },
  BufferInactiveADDED = {
    bg = "#211c1b",
    fg = "#c68c74"
  },
  BufferInactiveCHANGED = {
    bg = "#211c1b",
    fg = "#c99138"
  },
  BufferInactiveDELETED = {
    bg = "#211c1b",
    fg = "#d17f7b"
  },
  BufferInactiveERROR = {
    bg = "#211c1b",
    fg = "#b85e5e"
  },
  BufferInactiveHINT = {
    bg = "#211c1b",
    fg = "#c68c74"
  },
  BufferInactiveINFO = {
    bg = "#211c1b",
    fg = "#c99138"
  },
  BufferInactiveIndex = {
    bg = "#211c1b",
    fg = "#8a7a75"
  },
  BufferInactiveMod = {
    bg = "#211c1b",
    fg = "#d0ba8a"
  },
  BufferInactiveSign = {
    bg = "#211c1b",
    fg = "#1a1615"
  },
  BufferInactiveTarget = {
    bg = "#211c1b",
    fg = "#ff9994"
  },
  BufferInactiveWARN = {
    bg = "#211c1b",
    fg = "#d0ba8a"
  },
  BufferLineIndicatorSelected = {
    fg = "#f5b041"
  },
  BufferOffset = {
    bg = "#141110",
    fg = "#8a7a75"
  },
  BufferTabpageFill = {
    bg = "#282220",
    fg = "#8a7a75"
  },
  BufferTabpages = {
    bg = "#141110",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  BufferVisibleADDED = {
    bg = "#141110",
    fg = "#f1a98c"
  },
  BufferVisibleCHANGED = {
    bg = "#141110",
    fg = "#f5b041"
  },
  BufferVisibleDELETED = {
    bg = "#141110",
    fg = "#ff9994"
  },
  BufferVisibleERROR = {
    bg = "#141110",
    fg = "#e07070"
  },
  BufferVisibleHINT = {
    bg = "#141110",
    fg = "#f1a98c"
  },
  BufferVisibleINFO = {
    bg = "#141110",
    fg = "#f5b041"
  },
  BufferVisibleIndex = {
    bg = "#141110",
    fg = "#f5b041"
  },
  BufferVisibleMod = {
    bg = "#141110",
    fg = "#fde3a7"
  },
  BufferVisibleSign = {
    bg = "#141110",
    fg = "#f5b041"
  },
  BufferVisibleTarget = {
    bg = "#141110",
    fg = "#ff9994"
  },
  BufferVisibleWARN = {
    bg = "#141110",
    fg = "#fde3a7"
  },
  Character = {
    fg = "#f1a98c"
  },
  CmpDocumentation = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  CmpDocumentationBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  CmpGhostText = {
    fg = "#3d2e2a"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#fbeee6"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#2c2523",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#fbc5b0"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#fbc5b0"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#a08a85"
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
    fg = "#f1a98c"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#7f6c68"
  },
  CodeBlock = {
    bg = "#141110"
  },
  CodeiumSuggestion = {
    fg = "#3d2e2a"
  },
  ColorColumn = {
    bg = "#151211"
  },
  Comment = {
    fg = "#7f6c68",
    italic = true
  },
  ComplHint = {
    fg = "#3d2e2a"
  },
  Conceal = {
    fg = "#8a7a75"
  },
  Constant = {
    fg = "#f5b041"
  },
  CopilotAnnotation = {
    fg = "#3d2e2a"
  },
  CopilotSuggestion = {
    fg = "#3d2e2a"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#fbeee6",
    fg = "#1a1615"
  },
  CursorColumn = {
    bg = "#2c2523"
  },
  CursorIM = {
    bg = "#fbeee6",
    fg = "#1a1615"
  },
  CursorLine = {
    bg = "#2c2523"
  },
  CursorLineNr = {
    bold = true,
    fg = "#f5b041"
  },
  DapStoppedLine = {
    bg = "#312b24"
  },
  DashboardDesc = {
    fg = "#fbc5b0"
  },
  DashboardFiles = {
    fg = "#fbeee6"
  },
  DashboardFooter = {
    fg = "#fbc5b0"
  },
  DashboardHeader = {
    fg = "#fbeee6"
  },
  DashboardIcon = {
    fg = "#fbc5b0"
  },
  DashboardKey = {
    fg = "#f5b041"
  },
  DashboardMruIcon = {
    fg = "#ff9ebb"
  },
  DashboardMruTitle = {
    fg = "#fbc5b0"
  },
  DashboardProjectIcon = {
    fg = "#fde3a7"
  },
  DashboardProjectTitle = {
    fg = "#fbc5b0"
  },
  DashboardProjectTitleIcon = {
    fg = "#f5b041"
  },
  DashboardShortCut = {
    fg = "#fbc5b0"
  },
  DashboardShortCutIcon = {
    fg = "#ff9ebb"
  },
  Debug = {
    fg = "#f5b041"
  },
  DefinitionCount = {
    fg = "#ff9ebb"
  },
  DefinitionIcon = {
    fg = "#fbeee6"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#e07070"
  },
  DiagnosticHint = {
    fg = "#f1a98c"
  },
  DiagnosticInfo = {
    fg = "#f5b041"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#e07070",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#f1a98c",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#f5b041",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#fde3a7",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#3d2e2a"
  },
  DiagnosticVirtualTextError = {
    bg = "#2e1f1e",
    fg = "#e07070"
  },
  DiagnosticVirtualTextHint = {
    bg = "#302521",
    fg = "#f1a98c"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#302519",
    fg = "#f5b041"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#312b24",
    fg = "#fde3a7"
  },
  DiagnosticWarn = {
    fg = "#fde3a7"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#453732"
  },
  DiffChange = {
    bg = "#1f1a18"
  },
  DiffDelete = {
    bg = "#4c2d2c"
  },
  DiffText = {
    bg = "#3d2e2a"
  },
  Directory = {
    fg = "#fbeee6"
  },
  EndOfBuffer = {
    fg = "#1a1615"
  },
  Error = {
    fg = "#e07070"
  },
  ErrorMsg = {
    fg = "#e07070"
  },
  FlashBackdrop = {
    fg = "#5c4f4b"
  },
  FlashLabel = {
    bg = "#ff7eb3",
    bold = true,
    fg = "#fbeee6"
  },
  FloatBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  FloatTitle = {
    bg = "#141110",
    fg = "#cea291"
  },
  FoldColumn = {
    bg = "#1a1615",
    fg = "#7f6c68"
  },
  Folded = {
    bg = "#2c2523",
    fg = "#fbeee6"
  },
  Foo = {
    bg = "#ff7eb3",
    fg = "#fbeee6"
  },
  Function = {
    fg = "#fbeee6"
  },
  FzfLuaBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#a08a85"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#fbeee6"
  },
  FzfLuaFzfPointer = {
    fg = "#ff7eb3"
  },
  FzfLuaFzfSeparator = {
    bg = "#141110",
    fg = "#f5b041"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#141110",
    fg = "#cea291"
  },
  FzfLuaTitle = {
    bg = "#141110",
    fg = "#f5b041"
  },
  GitGutterAdd = {
    fg = "#f1a98c"
  },
  GitGutterAddLineNr = {
    fg = "#f1a98c"
  },
  GitGutterChange = {
    fg = "#f5b041"
  },
  GitGutterChangeLineNr = {
    fg = "#f5b041"
  },
  GitGutterDelete = {
    fg = "#ff9994"
  },
  GitGutterDeleteLineNr = {
    fg = "#ff9994"
  },
  GitSignsAdd = {
    fg = "#f1a98c"
  },
  GitSignsChange = {
    fg = "#f5b041"
  },
  GitSignsDelete = {
    fg = "#ff9994"
  },
  GlyphPalette1 = {
    fg = "#e07070"
  },
  GlyphPalette2 = {
    fg = "#f1a98c"
  },
  GlyphPalette3 = {
    fg = "#fde3a7"
  },
  GlyphPalette4 = {
    fg = "#fbeee6"
  },
  GlyphPalette6 = {
    fg = "#f5b041"
  },
  GlyphPalette7 = {
    fg = "#fbeee6"
  },
  GlyphPalette9 = {
    fg = "#ff9994"
  },
  GrugFarHelpHeader = {
    fg = "#7f6c68"
  },
  GrugFarHelpHeaderKey = {
    fg = "#fbc5b0"
  },
  GrugFarInputLabel = {
    fg = "#fbc5b0"
  },
  GrugFarInputPlaceholder = {
    fg = "#5c4f4b"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#f5b041"
  },
  GrugFarResultsHeader = {
    fg = "#f5b041"
  },
  GrugFarResultsLineColumn = {
    fg = "#5c4f4b"
  },
  GrugFarResultsLineNo = {
    fg = "#5c4f4b"
  },
  GrugFarResultsMatch = {
    bg = "#ff9994",
    fg = "#151211"
  },
  GrugFarResultsStats = {
    fg = "#fbeee6"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#25211f"
  },
  Headline2 = {
    bg = "#25201c"
  },
  Headline3 = {
    bg = "#251d1b"
  },
  Headline4 = {
    bg = "#251d1b"
  },
  Headline5 = {
    bg = "#251d1d"
  },
  Headline6 = {
    bg = "#251d1d"
  },
  Headline7 = {
    bg = "#251e17"
  },
  Headline8 = {
    bg = "#251d1b"
  },
  HopNextKey = {
    bold = true,
    fg = "#ff7eb3"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#f5b041"
  },
  HopNextKey2 = {
    fg = "#9d722f"
  },
  HopUnmatched = {
    fg = "#5c4f4b"
  },
  IblIndent = {
    fg = "#2c2523",
    nocombine = true
  },
  IblScope = {
    fg = "#fbc5b0",
    nocombine = true
  },
  Identifier = {
    fg = "#ff9ebb"
  },
  IlluminatedWordRead = {
    bg = "#2c2523"
  },
  IlluminatedWordText = {
    bg = "#2c2523"
  },
  IlluminatedWordWrite = {
    bg = "#2c2523"
  },
  IncSearch = {
    bg = "#f5b041",
    fg = "#151211"
  },
  IndentBlanklineChar = {
    fg = "#2c2523",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#fbc5b0",
    nocombine = true
  },
  IndentLine = {
    fg = "#2c2523",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#fbc5b0",
    nocombine = true
  },
  Italic = {
    fg = "#fbeee6",
    italic = true
  },
  Keyword = {
    fg = "#fbc5b0",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ff7eb3"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#2c2523"
  },
  LeapBackdrop = {
    fg = "#5c4f4b"
  },
  LeapLabel = {
    bold = true,
    fg = "#ff7eb3"
  },
  LeapMatch = {
    bg = "#ff7eb3",
    bold = true,
    fg = "#fbeee6"
  },
  LineNr = {
    fg = "#2c2523"
  },
  LineNrAbove = {
    fg = "#2c2523"
  },
  LineNrBelow = {
    fg = "#2c2523"
  },
  LspCodeLens = {
    fg = "#7f6c68"
  },
  LspFloatWinBorder = {
    fg = "#cea291"
  },
  LspFloatWinNormal = {
    bg = "#141110"
  },
  LspInfoBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  LspInlayHint = {
    bg = "#1e1817",
    fg = "#5c4f4b"
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
    bg = "#2c2523"
  },
  LspReferenceText = {
    bg = "#2c2523"
  },
  LspReferenceWrite = {
    bg = "#2c2523"
  },
  LspSagaBorderTitle = {
    fg = "#fbc5b0"
  },
  LspSagaCodeActionBorder = {
    fg = "#fbeee6"
  },
  LspSagaCodeActionContent = {
    fg = "#ff9ebb"
  },
  LspSagaCodeActionTitle = {
    fg = "#fbc5b0"
  },
  LspSagaDefPreviewBorder = {
    fg = "#f1a98c"
  },
  LspSagaFinderSelection = {
    fg = "#5e4b44"
  },
  LspSagaHoverBorder = {
    fg = "#fbeee6"
  },
  LspSagaRenameBorder = {
    fg = "#f1a98c"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff9994"
  },
  LspSignatureActiveParameter = {
    bg = "#352b28",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#f5b041"
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
    bg = "#2c2523"
  },
  MiniCursorwordCurrent = {
    bg = "#2c2523"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#ff9994",
    fg = "#151211"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#f1a98c",
    fg = "#151211"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#f1a98c"
  },
  MiniDiffSignChange = {
    fg = "#f5b041"
  },
  MiniDiffSignDelete = {
    fg = "#ff9994"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#fbeee6"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#141110",
    bold = true,
    fg = "#cea291"
  },
  MiniHipatternsFixme = {
    bg = "#e07070",
    bold = true,
    fg = "#151211"
  },
  MiniHipatternsHack = {
    bg = "#fde3a7",
    bold = true,
    fg = "#151211"
  },
  MiniHipatternsNote = {
    bg = "#f1a98c",
    bold = true,
    fg = "#151211"
  },
  MiniHipatternsTodo = {
    bg = "#f5b041",
    bold = true,
    fg = "#151211"
  },
  MiniIconsAzure = {
    fg = "#f5b041"
  },
  MiniIconsBlue = {
    fg = "#fbeee6"
  },
  MiniIconsCyan = {
    fg = "#f1a98c"
  },
  MiniIconsGreen = {
    fg = "#f1a98c"
  },
  MiniIconsGrey = {
    fg = "#fbeee6"
  },
  MiniIconsOrange = {
    fg = "#f5b041"
  },
  MiniIconsPurple = {
    fg = "#ff9ebb"
  },
  MiniIconsRed = {
    fg = "#ff9994"
  },
  MiniIconsYellow = {
    fg = "#fde3a7"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#fbc5b0",
    nocombine = true
  },
  MiniJump = {
    bg = "#ff7eb3",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff7eb3",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#141110",
    fg = "#f1a98c",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#f5b041",
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
    bg = "#141110",
    fg = "#f1a98c"
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
    bg = "#141110",
    fg = "#f5b041"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#fde3a7",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#fbeee6"
  },
  MiniStarterInactive = {
    fg = "#7f6c68",
    italic = true
  },
  MiniStarterItem = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  MiniStarterItemBullet = {
    fg = "#cea291"
  },
  MiniStarterItemPrefix = {
    fg = "#fde3a7"
  },
  MiniStarterQuery = {
    fg = "#f5b041"
  },
  MiniStarterSection = {
    fg = "#fbc5b0"
  },
  MiniStatuslineDevinfo = {
    bg = "#2c2523",
    fg = "#a08a85"
  },
  MiniStatuslineFileinfo = {
    bg = "#2c2523",
    fg = "#a08a85"
  },
  MiniStatuslineFilename = {
    bg = "#2c2523",
    fg = "#a08a85"
  },
  MiniStatuslineInactive = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  MiniStatuslineModeCommand = {
    bg = "#fde3a7",
    bold = true,
    fg = "#151211"
  },
  MiniStatuslineModeInsert = {
    bg = "#f1a98c",
    bold = true,
    fg = "#151211"
  },
  MiniStatuslineModeNormal = {
    bg = "#fbeee6",
    bold = true,
    fg = "#151211"
  },
  MiniStatuslineModeOther = {
    bg = "#f1a98c",
    bold = true,
    fg = "#151211"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff9994",
    bold = true,
    fg = "#151211"
  },
  MiniStatuslineModeVisual = {
    bg = "#ff9ebb",
    bold = true,
    fg = "#151211"
  },
  MiniSurround = {
    bg = "#f5b041",
    fg = "#151211"
  },
  MiniTablineCurrent = {
    bg = "#2c2523",
    fg = "#fbeee6"
  },
  MiniTablineFill = {
    bg = "#151211"
  },
  MiniTablineHidden = {
    bg = "#141110",
    fg = "#8a7a75"
  },
  MiniTablineModifiedCurrent = {
    bg = "#2c2523",
    fg = "#fde3a7"
  },
  MiniTablineModifiedHidden = {
    bg = "#141110",
    fg = "#b9a57b"
  },
  MiniTablineModifiedVisible = {
    bg = "#141110",
    fg = "#fde3a7"
  },
  MiniTablineTabpagesection = {
    bg = "#2c2523",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff9994"
  },
  MiniTestPass = {
    bold = true,
    fg = "#f1a98c"
  },
  MiniTrailspace = {
    bg = "#ff9994"
  },
  ModeMsg = {
    bold = true,
    fg = "#a08a85"
  },
  MoreMsg = {
    fg = "#fbeee6"
  },
  MsgArea = {
    fg = "#a08a85"
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
    fg = "#fbeee6"
  },
  NavicText = {
    bg = "NONE",
    fg = "#fbeee6"
  },
  NeoTreeDimText = {
    fg = "#2c2523"
  },
  NeoTreeFileName = {
    fg = "#a08a85"
  },
  NeoTreeGitModified = {
    fg = "#f5b041"
  },
  NeoTreeGitStaged = {
    fg = "#f5b041"
  },
  NeoTreeGitUntracked = {
    fg = "#ff9ebb"
  },
  NeoTreeNormal = {
    bg = "#141110",
    fg = "#a08a85"
  },
  NeoTreeNormalNC = {
    bg = "#141110",
    fg = "#a08a85"
  },
  NeoTreeTabActive = {
    bg = "#141110",
    bold = true,
    fg = "#fbeee6"
  },
  NeoTreeTabInactive = {
    bg = "#100e0d",
    fg = "#5c4f4b"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#100e0d",
    fg = "#1a1615"
  },
  NeogitBranch = {
    fg = "#ff9ebb"
  },
  NeogitDiffAddHighlight = {
    bg = "#453732",
    fg = "#f1a98c"
  },
  NeogitDiffContextHighlight = {
    bg = "#231e1c",
    fg = "#a08a85"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#4c2d2c",
    fg = "#ff9994"
  },
  NeogitHunkHeader = {
    bg = "#2c2523",
    fg = "#fbeee6"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#2c2523",
    fg = "#fbeee6"
  },
  NeogitRemote = {
    fg = "#ff9ebb"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#ff9ebb"
  },
  NeotestBorder = {
    fg = "#fbeee6"
  },
  NeotestDir = {
    fg = "#fbeee6"
  },
  NeotestExpandMarker = {
    fg = "#a08a85"
  },
  NeotestFailed = {
    fg = "#ff9994"
  },
  NeotestFile = {
    fg = "#f1a98c"
  },
  NeotestFocused = {
    fg = "#fde3a7"
  },
  NeotestIndent = {
    fg = "#a08a85"
  },
  NeotestMarked = {
    fg = "#fbeee6"
  },
  NeotestNamespace = {
    fg = "#c49a8a"
  },
  NeotestPassed = {
    fg = "#f1a98c"
  },
  NeotestRunning = {
    fg = "#fde3a7"
  },
  NeotestSkipped = {
    fg = "#fbeee6"
  },
  NeotestTarget = {
    fg = "#fbeee6"
  },
  NeotestTest = {
    fg = "#a08a85"
  },
  NeotestWinSelect = {
    fg = "#fbeee6"
  },
  NoiceCmdlineIconInput = {
    fg = "#fde3a7"
  },
  NoiceCmdlineIconLua = {
    fg = "#fbc5b0"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#fde3a7"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#fbc5b0"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#fde3a7"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#fbc5b0"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#a08a85"
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
    fg = "#5c4f4b"
  },
  Normal = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NormalFloat = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  NormalNC = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NormalSB = {
    bg = "#141110",
    fg = "#a08a85"
  },
  NotifyBackground = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NotifyDEBUGBody = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NotifyDEBUGBorder = {
    bg = "#1a1615",
    fg = "#38302e"
  },
  NotifyDEBUGIcon = {
    fg = "#7f6c68"
  },
  NotifyDEBUGTitle = {
    fg = "#7f6c68"
  },
  NotifyERRORBody = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NotifyERRORBorder = {
    bg = "#1a1615",
    fg = "#553130"
  },
  NotifyERRORIcon = {
    fg = "#e07070"
  },
  NotifyERRORTitle = {
    fg = "#e07070"
  },
  NotifyINFOBody = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NotifyINFOBorder = {
    bg = "#1a1615",
    fg = "#5c4422"
  },
  NotifyINFOIcon = {
    fg = "#f5b041"
  },
  NotifyINFOTitle = {
    fg = "#f5b041"
  },
  NotifyTRACEBody = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NotifyTRACEBorder = {
    bg = "#1a1615",
    fg = "#5f3f47"
  },
  NotifyTRACEIcon = {
    fg = "#ff9ebb"
  },
  NotifyTRACETitle = {
    fg = "#ff9ebb"
  },
  NotifyWARNBody = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  NotifyWARNBorder = {
    bg = "#1a1615",
    fg = "#5e5441"
  },
  NotifyWARNIcon = {
    fg = "#fde3a7"
  },
  NotifyWARNTitle = {
    fg = "#fde3a7"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#fbeee6"
  },
  NvimTreeGitDeleted = {
    fg = "#ff9994"
  },
  NvimTreeGitDirty = {
    fg = "#f5b041"
  },
  NvimTreeGitNew = {
    fg = "#f1a98c"
  },
  NvimTreeImageFile = {
    fg = "#a08a85"
  },
  NvimTreeIndentMarker = {
    fg = "#2c2523"
  },
  NvimTreeNormal = {
    bg = "#141110",
    fg = "#a08a85"
  },
  NvimTreeNormalNC = {
    bg = "#141110",
    fg = "#a08a85"
  },
  NvimTreeOpenedFile = {
    bg = "#2c2523"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#fbeee6"
  },
  NvimTreeSpecialFile = {
    fg = "#ff9ebb",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#fbeee6"
  },
  NvimTreeWinSeparator = {
    bg = "#141110",
    fg = "#141110"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#fbc5b0"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#f5b041"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#ff9ebb"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#312426",
    fg = "#ff9ebb"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#fbc5b0"
  },
  Operator = {
    fg = "#fde3a7"
  },
  Pmenu = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  PmenuMatch = {
    bg = "#141110",
    fg = "#fbc5b0"
  },
  PmenuMatchSel = {
    bg = "#282220",
    fg = "#fbc5b0"
  },
  PmenuSbar = {
    bg = "#201c1b"
  },
  PmenuSel = {
    bg = "#282220"
  },
  PmenuThumb = {
    bg = "#2c2523"
  },
  PreProc = {
    fg = "#fbc5b0"
  },
  Question = {
    fg = "#fbeee6"
  },
  QuickFixLine = {
    bg = "#5e4b44",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#fbeee6"
  },
  RainbowDelimiterCyan = {
    fg = "#fbc5b0"
  },
  RainbowDelimiterGreen = {
    fg = "#f1a98c"
  },
  RainbowDelimiterOrange = {
    fg = "#f5b041"
  },
  RainbowDelimiterRed = {
    fg = "#ff9994"
  },
  RainbowDelimiterViolet = {
    fg = "#ff9ebb"
  },
  RainbowDelimiterYellow = {
    fg = "#fde3a7"
  },
  ReferencesCount = {
    fg = "#ff9ebb"
  },
  ReferencesIcon = {
    fg = "#fbeee6"
  },
  RenderMarkdownBullet = {
    fg = "#f5b041"
  },
  RenderMarkdownCode = {
    bg = "#141110"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#f5b041"
  },
  RenderMarkdownH1Bg = {
    bg = "#312c2a"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#fbeee6"
  },
  RenderMarkdownH2Bg = {
    bg = "#312b24"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#fde3a7"
  },
  RenderMarkdownH3Bg = {
    bg = "#302521"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#f1a98c"
  },
  RenderMarkdownH4Bg = {
    bg = "#302521"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#f1a98c"
  },
  RenderMarkdownH5Bg = {
    bg = "#312426"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#ff9ebb"
  },
  RenderMarkdownH6Bg = {
    bg = "#312426"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#ff9ebb"
  },
  RenderMarkdownH7Bg = {
    bg = "#302519"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#f5b041"
  },
  RenderMarkdownH8Bg = {
    bg = "#312322"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff9994"
  },
  RenderMarkdownTableHead = {
    fg = "#ff9994"
  },
  RenderMarkdownTableRow = {
    fg = "#f5b041"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#e07070"
  },
  ScrollbarErrorHandle = {
    bg = "#2c2523",
    fg = "#e07070"
  },
  ScrollbarHandle = {
    bg = "#2c2523",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  ScrollbarHintHandle = {
    bg = "#2c2523",
    fg = "#f1a98c"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#f5b041"
  },
  ScrollbarInfoHandle = {
    bg = "#2c2523",
    fg = "#f5b041"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#ff9ebb"
  },
  ScrollbarMiscHandle = {
    bg = "#2c2523",
    fg = "#ff9ebb"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#f5b041"
  },
  ScrollbarSearchHandle = {
    bg = "#2c2523",
    fg = "#f5b041"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#fde3a7"
  },
  ScrollbarWarnHandle = {
    bg = "#2c2523",
    fg = "#fde3a7"
  },
  Search = {
    bg = "#c49a8a",
    fg = "#fbeee6"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#f1a98c"
  },
  SidekickSignChange = {
    fg = "#f5b041"
  },
  SidekickSignDelete = {
    fg = "#ff9994"
  },
  SignColumn = {
    bg = "#1a1615",
    fg = "#2c2523"
  },
  SignColumnSB = {
    bg = "#141110",
    fg = "#2c2523"
  },
  SnacksDashboardDesc = {
    fg = "#fbc5b0"
  },
  SnacksDashboardDir = {
    fg = "#5c4f4b"
  },
  SnacksDashboardFooter = {
    fg = "#fbc5b0"
  },
  SnacksDashboardHeader = {
    fg = "#fbeee6"
  },
  SnacksDashboardIcon = {
    fg = "#fbc5b0"
  },
  SnacksDashboardKey = {
    fg = "#f5b041"
  },
  SnacksDashboardSpecial = {
    fg = "#ff9ebb"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#fbc5b0"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#312825",
    fg = "#fbc5b0"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#fbc5b0"
  },
  SnacksIndent = {
    fg = "#2c2523",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#fbeee6",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#fde3a7",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#f1a98c",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#f1a98c",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#ff9ebb",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#ff9ebb",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#f5b041",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ff9994",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#fbc5b0",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#fde3a7"
  },
  SnacksInputIcon = {
    fg = "#fbc5b0"
  },
  SnacksInputTitle = {
    fg = "#fde3a7"
  },
  SnacksNotifierBorderDebug = {
    bg = "#1a1615",
    fg = "#423836"
  },
  SnacksNotifierBorderError = {
    bg = "#1a1615",
    fg = "#693a39"
  },
  SnacksNotifierBorderInfo = {
    bg = "#1a1615",
    fg = "#725427"
  },
  SnacksNotifierBorderTrace = {
    bg = "#1a1615",
    fg = "#764c57"
  },
  SnacksNotifierBorderWarn = {
    bg = "#1a1615",
    fg = "#75684f"
  },
  SnacksNotifierDebug = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  SnacksNotifierError = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  SnacksNotifierIconDebug = {
    fg = "#7f6c68"
  },
  SnacksNotifierIconError = {
    fg = "#e07070"
  },
  SnacksNotifierIconInfo = {
    fg = "#f5b041"
  },
  SnacksNotifierIconTrace = {
    fg = "#ff9ebb"
  },
  SnacksNotifierIconWarn = {
    fg = "#fde3a7"
  },
  SnacksNotifierInfo = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  SnacksNotifierTitleDebug = {
    fg = "#7f6c68"
  },
  SnacksNotifierTitleError = {
    fg = "#e07070"
  },
  SnacksNotifierTitleInfo = {
    fg = "#f5b041"
  },
  SnacksNotifierTitleTrace = {
    fg = "#ff9ebb"
  },
  SnacksNotifierTitleWarn = {
    fg = "#fde3a7"
  },
  SnacksNotifierTrace = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  SnacksNotifierWarn = {
    bg = "#1a1615",
    fg = "#fbeee6"
  },
  SnacksPickerBoxTitle = {
    bg = "#141110",
    fg = "#f5b041"
  },
  SnacksPickerInputBorder = {
    bg = "#141110",
    fg = "#f5b041"
  },
  SnacksPickerInputTitle = {
    bg = "#141110",
    fg = "#f5b041"
  },
  SnacksPickerPickWin = {
    bg = "#c49a8a",
    bold = true,
    fg = "#fbeee6"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ff7eb3",
    bold = true,
    fg = "#fbeee6"
  },
  SnacksPickerSelected = {
    fg = "#ff7eb3"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#312825",
    fg = "#fbc5b0"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#1e1817",
    fg = "#5c4f4b"
  },
  SnacksProfilerIconInfo = {
    bg = "#5e4b44",
    fg = "#fbc5b0"
  },
  SnacksProfilerIconTrace = {
    bg = "#251d1b",
    fg = "#5c4f4b"
  },
  SnacksZenIcon = {
    fg = "#ff9ebb"
  },
  Sneak = {
    bg = "#ff9ebb",
    fg = "#2c2523"
  },
  SneakScope = {
    bg = "#5e4b44"
  },
  Special = {
    fg = "#fbc5b0"
  },
  SpecialKey = {
    fg = "#5c4f4b"
  },
  SpellBad = {
    sp = "#e07070",
    undercurl = true
  },
  SpellCap = {
    sp = "#fde3a7",
    undercurl = true
  },
  SpellLocal = {
    sp = "#f5b041",
    undercurl = true
  },
  SpellRare = {
    sp = "#f1a98c",
    undercurl = true
  },
  Statement = {
    fg = "#ff9ebb"
  },
  StatusLine = {
    bg = "#141110",
    fg = "#a08a85"
  },
  StatusLineNC = {
    bg = "#141110",
    fg = "#2c2523"
  },
  String = {
    fg = "#f1a98c"
  },
  Substitute = {
    bg = "#ff9994",
    fg = "#151211"
  },
  SupermavenSuggestion = {
    fg = "#3d2e2a"
  },
  TabLine = {
    bg = "#141110",
    fg = "#2c2523"
  },
  TabLineFill = {
    bg = "#151211"
  },
  TabLineSel = {
    bg = "#fbeee6",
    fg = "#151211"
  },
  TargetWord = {
    fg = "#fbc5b0"
  },
  TelescopeBorder = {
    bg = "#141110",
    fg = "#cea291"
  },
  TelescopeNormal = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  TelescopePromptBorder = {
    bg = "#141110",
    fg = "#f5b041"
  },
  TelescopePromptTitle = {
    bg = "#141110",
    fg = "#f5b041"
  },
  TelescopeResultsComment = {
    fg = "#5c4f4b"
  },
  Title = {
    bold = true,
    fg = "#fbeee6"
  },
  Todo = {
    bg = "#fde3a7",
    fg = "#1a1615"
  },
  TreesitterContext = {
    bg = "#282220"
  },
  TroubleCount = {
    bg = "#2c2523",
    fg = "#ff9ebb"
  },
  TroubleNormal = {
    bg = "#141110",
    fg = "#fbeee6"
  },
  TroubleText = {
    fg = "#a08a85"
  },
  Type = {
    fg = "#fbc5b0"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#151211"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#fde3a7"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#fbeee6"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#fde3a7"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#f1a98c"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#f1a98c"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#ff9ebb"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#ff9ebb"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#f5b041"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#ff9994"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#fde3a7"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#fbeee6"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#f5b041"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#fbeee6"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#f1a98c"
  },
  Visual = {
    bg = "#5e4b44"
  },
  VisualNOS = {
    bg = "#5e4b44"
  },
  WarningMsg = {
    fg = "#fde3a7"
  },
  WhichKey = {
    fg = "#fbc5b0"
  },
  WhichKeyDesc = {
    fg = "#ff9ebb"
  },
  WhichKeyGroup = {
    fg = "#fbeee6"
  },
  WhichKeyNormal = {
    bg = "#141110"
  },
  WhichKeySeparator = {
    fg = "#7f6c68"
  },
  WhichKeyValue = {
    fg = "#8a7a75"
  },
  Whitespace = {
    fg = "#2c2523"
  },
  WildMenu = {
    bg = "#5e4b44"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#151211"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#302519",
    fg = "#f5b041"
  },
  debugPC = {
    bg = "#141110"
  },
  diffAdded = {
    bg = "#453732",
    fg = "#f1a98c"
  },
  diffChanged = {
    bg = "#1f1a18",
    fg = "#f5b041"
  },
  diffFile = {
    fg = "#fbeee6"
  },
  diffIndexLine = {
    fg = "#ff9ebb"
  },
  diffLine = {
    fg = "#7f6c68"
  },
  diffNewFile = {
    bg = "#453732",
    fg = "#fbc5b0"
  },
  diffOldFile = {
    bg = "#4c2d2c",
    fg = "#fbc5b0"
  },
  diffRemoved = {
    bg = "#4c2d2c",
    fg = "#ff9994"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#e07070"
  },
  healthSuccess = {
    fg = "#f5b041"
  },
  healthWarning = {
    fg = "#fde3a7"
  },
  helpCommand = {
    bg = "#3d2e2a",
    fg = "#fbeee6"
  },
  helpExample = {
    fg = "#7f6c68"
  },
  htmlH1 = {
    bold = true,
    fg = "#ff9ebb"
  },
  htmlH2 = {
    bold = true,
    fg = "#fbeee6"
  },
  illuminatedCurWord = {
    bg = "#2c2523"
  },
  illuminatedWord = {
    bg = "#2c2523"
  },
  lCursor = {
    bg = "#fbeee6",
    fg = "#1a1615"
  },
  qfFileName = {
    fg = "#fbeee6"
  },
  qfLineNr = {
    fg = "#8a7a75"
  }
}
