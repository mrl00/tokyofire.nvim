local colors = {
  _name = "tokyonight_fire",
  _style = "fire",
  bg = "#1b1310",
  bg_dark = "#150e0c",
  bg_dark1 = "#100a08",
  bg_float = "#150e0c",
  bg_highlight = "#30201b",
  bg_popup = "#150e0c",
  bg_search = "#d69170",
  bg_sidebar = "#150e0c",
  bg_statusline = "#150e0c",
  bg_visual = "#664536",
  black = "#160f0d",
  blue = "#fceed2",
  blue0 = "#d69170",
  blue1 = "#fdb594",
  blue2 = "#fa9c3a",
  blue5 = "#fed576",
  blue6 = "#f57080",
  blue7 = "#442821",
  border = "#160f0d",
  border_highlight = "#d0957a",
  comment = "#b08379",
  cyan = "#fdaf8b",
  dark3 = "#725248",
  dark5 = "#a38176",
  diff = {
    add = "#4a3328",
    change = "#211613",
    delete = "#4c2321",
    text = "#442821",
  },
  error = "#de5152",
  fg = "#fff4ee",
  fg_dark = "#dfbdba",
  fg_float = "#fff4ee",
  fg_gutter = "#3e2f2e",
  fg_sidebar = "#dfbdba",
  git = {
    add = "#f89068",
    change = "#fa9c3a",
    delete = "#ff6e6c",
    ignore = "#725248",
  },
  green = "#f89068",
  green1 = "#fa9c3a",
  green2 = "#d69170",
  hint = "#f89068",
  info = "#fa9c3a",
  magenta = "#f56d88",
  magenta2 = "#ee506a",
  none = "NONE",
  orange = "#fa933a",
  purple = "#f56d88",
  rainbow = { "#fceed2", "#fede6d", "#f89068", "#f89068", "#f56d88", "#f56d88", "#fa933a", "#ff6e6c" },
  red = "#ff6e6c",
  red1 = "#de5152",
  teal = "#f89068",
  terminal = {
    black = "#160f0d",
    black_bright = "#442821",
    blue = "#fceed2",
    blue_bright = "#fffdfb",
    cyan = "#fdaf8b",
    cyan_bright = "#ffc1a8",
    green = "#f89068",
    green_bright = "#ffa181",
    magenta = "#f56d88",
    magenta_bright = "#ff7f97",
    red = "#ff6e6c",
    red_bright = "#ff8685",
    white = "#dfbdba",
    white_bright = "#fff4ee",
    yellow = "#fede6d",
    yellow_bright = "#ffedbd",
  },
  terminal_black = "#442821",
  todo = "#fceed2",
  warning = "#fede6d",
  yellow = "#fede6d",
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
    fg = "#de5152",
  },
  ["@comment.hint"] = {
    fg = "#f89068",
  },
  ["@comment.info"] = {
    fg = "#fa9c3a",
  },
  ["@comment.note"] = {
    fg = "#f89068",
  },
  ["@comment.todo"] = {
    fg = "#fceed2",
  },
  ["@comment.warning"] = {
    fg = "#fede6d",
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#f56d88",
  },
  ["@constructor.tsx"] = {
    fg = "#fdb594",
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
    fg = "#f56d88",
    italic = true,
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#f56d88",
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#fceed2",
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
    fg = "#fec8af",
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
    sp = "#de5152",
    undercurl = true,
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
    fg = "#d0957a",
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#d0957a",
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.emphasis"] = {
    italic = true,
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = {
    bg = "#322923",
    bold = true,
    fg = "#fceed2",
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#322719",
    bold = true,
    fg = "#fede6d",
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#312019",
    bold = true,
    fg = "#f89068",
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#312019",
    bold = true,
    fg = "#f89068",
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#311c1c",
    bold = true,
    fg = "#f56d88",
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#311c1c",
    bold = true,
    fg = "#f56d88",
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#312014",
    bold = true,
    fg = "#fa933a",
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#321c19",
    bold = true,
    fg = "#ff6e6c",
  },
  ["@markup.italic"] = {
    italic = true,
  },
  ["@markup.link"] = {
    fg = "#f89068",
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#fed576",
  },
  ["@markup.list.checked"] = {
    fg = "#fa9c3a",
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#fa933a",
  },
  ["@markup.list.unchecked"] = {
    fg = "#fceed2",
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#442821",
    fg = "#fceed2",
  },
  ["@markup.strikethrough"] = {
    strikethrough = true,
  },
  ["@markup.strong"] = {
    bold = true,
  },
  ["@markup.underline"] = {
    underline = true,
  },
  ["@module"] = "Include",
  ["@module.builtin"] = {
    fg = "#ff6e6c",
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#fed576",
  },
  ["@property"] = {
    fg = "#fa9c3a",
  },
  ["@punctuation.bracket"] = {
    fg = "#dfbdba",
  },
  ["@punctuation.delimiter"] = {
    fg = "#fed576",
  },
  ["@punctuation.special"] = {
    fg = "#fed576",
  },
  ["@punctuation.special.markdown"] = {
    fg = "#fa933a",
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#fede6d",
  },
  ["@string.escape"] = {
    fg = "#f56d88",
  },
  ["@string.regexp"] = {
    fg = "#f57080",
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#b8ac98",
  },
  ["@tag.javascript"] = {
    fg = "#ff6e6c",
  },
  ["@tag.tsx"] = {
    fg = "#ff6e6c",
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#d0957a",
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#fff4ee",
  },
  ["@variable.builtin"] = {
    fg = "#ff6e6c",
  },
  ["@variable.member"] = {
    fg = "#fa9c3a",
  },
  ["@variable.parameter"] = {
    fg = "#fede6d",
  },
  ["@variable.parameter.builtin"] = {
    fg = "#fee287",
  },
  ALEErrorSign = {
    fg = "#de5152",
  },
  ALEWarningSign = {
    fg = "#fede6d",
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
    fg = "#3e2f2e",
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
    fg = "#fff4ee",
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
    fg = "#fdaf8b",
  },
  AlphaFooter = {
    fg = "#fdb594",
  },
  AlphaHeader = {
    fg = "#fceed2",
  },
  AlphaHeaderLabel = {
    fg = "#fa933a",
  },
  AlphaShortcut = {
    fg = "#fa933a",
  },
  BlinkCmpDoc = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  BlinkCmpDocBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  BlinkCmpGhostText = {
    fg = "#442821",
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#f89068",
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#f89068",
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#dfbdba",
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
    fg = "#f89068",
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#f89068",
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#fff4ee",
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#3e2f2e",
    strikethrough = true,
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#fdb594",
  },
  BlinkCmpMenu = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  BlinkCmpMenuBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  BlinkCmpSignatureHelp = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  Bold = {
    bold = true,
    fg = "#fff4ee",
  },
  BufferAlternate = {
    bg = "#3e2f2e",
    fg = "#fff4ee",
  },
  BufferAlternateADDED = {
    bg = "#3e2f2e",
    fg = "#f89068",
  },
  BufferAlternateCHANGED = {
    bg = "#3e2f2e",
    fg = "#fa9c3a",
  },
  BufferAlternateDELETED = {
    bg = "#3e2f2e",
    fg = "#ff6e6c",
  },
  BufferAlternateERROR = {
    bg = "#3e2f2e",
    fg = "#de5152",
  },
  BufferAlternateHINT = {
    bg = "#3e2f2e",
    fg = "#f89068",
  },
  BufferAlternateINFO = {
    bg = "#3e2f2e",
    fg = "#fa9c3a",
  },
  BufferAlternateIndex = {
    bg = "#3e2f2e",
    fg = "#fa9c3a",
  },
  BufferAlternateMod = {
    bg = "#3e2f2e",
    fg = "#fede6d",
  },
  BufferAlternateSign = {
    bg = "#3e2f2e",
    fg = "#fa9c3a",
  },
  BufferAlternateTarget = {
    bg = "#3e2f2e",
    fg = "#ff6e6c",
  },
  BufferAlternateWARN = {
    bg = "#3e2f2e",
    fg = "#fede6d",
  },
  BufferCurrent = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  BufferCurrentADDED = {
    bg = "#1b1310",
    fg = "#f89068",
  },
  BufferCurrentCHANGED = {
    bg = "#1b1310",
    fg = "#fa9c3a",
  },
  BufferCurrentDELETED = {
    bg = "#1b1310",
    fg = "#ff6e6c",
  },
  BufferCurrentERROR = {
    bg = "#1b1310",
    fg = "#de5152",
  },
  BufferCurrentHINT = {
    bg = "#1b1310",
    fg = "#f89068",
  },
  BufferCurrentINFO = {
    bg = "#1b1310",
    fg = "#fa9c3a",
  },
  BufferCurrentIndex = {
    bg = "#1b1310",
    fg = "#fa9c3a",
  },
  BufferCurrentMod = {
    bg = "#1b1310",
    fg = "#fede6d",
  },
  BufferCurrentSign = {
    bg = "#1b1310",
    fg = "#1b1310",
  },
  BufferCurrentTarget = {
    bg = "#1b1310",
    fg = "#ff6e6c",
  },
  BufferCurrentWARN = {
    bg = "#1b1310",
    fg = "#fede6d",
  },
  BufferInactive = {
    bg = "#231814",
    fg = "#886b62",
  },
  BufferInactiveADDED = {
    bg = "#231814",
    fg = "#cc7756",
  },
  BufferInactiveCHANGED = {
    bg = "#231814",
    fg = "#cd8132",
  },
  BufferInactiveDELETED = {
    bg = "#231814",
    fg = "#d15c5a",
  },
  BufferInactiveERROR = {
    bg = "#231814",
    fg = "#b74545",
  },
  BufferInactiveHINT = {
    bg = "#231814",
    fg = "#cc7756",
  },
  BufferInactiveINFO = {
    bg = "#231814",
    fg = "#cd8132",
  },
  BufferInactiveIndex = {
    bg = "#231814",
    fg = "#a38176",
  },
  BufferInactiveMod = {
    bg = "#231814",
    fg = "#d1b55a",
  },
  BufferInactiveSign = {
    bg = "#231814",
    fg = "#1b1310",
  },
  BufferInactiveTarget = {
    bg = "#231814",
    fg = "#ff6e6c",
  },
  BufferInactiveWARN = {
    bg = "#231814",
    fg = "#d1b55a",
  },
  BufferLineIndicatorSelected = {
    fg = "#fa9c3a",
  },
  BufferOffset = {
    bg = "#150e0c",
    fg = "#a38176",
  },
  BufferTabpageFill = {
    bg = "#2c1d19",
    fg = "#a38176",
  },
  BufferTabpages = {
    bg = "#150e0c",
    fg = "NONE",
  },
  BufferVisible = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  BufferVisibleADDED = {
    bg = "#150e0c",
    fg = "#f89068",
  },
  BufferVisibleCHANGED = {
    bg = "#150e0c",
    fg = "#fa9c3a",
  },
  BufferVisibleDELETED = {
    bg = "#150e0c",
    fg = "#ff6e6c",
  },
  BufferVisibleERROR = {
    bg = "#150e0c",
    fg = "#de5152",
  },
  BufferVisibleHINT = {
    bg = "#150e0c",
    fg = "#f89068",
  },
  BufferVisibleINFO = {
    bg = "#150e0c",
    fg = "#fa9c3a",
  },
  BufferVisibleIndex = {
    bg = "#150e0c",
    fg = "#fa9c3a",
  },
  BufferVisibleMod = {
    bg = "#150e0c",
    fg = "#fede6d",
  },
  BufferVisibleSign = {
    bg = "#150e0c",
    fg = "#fa9c3a",
  },
  BufferVisibleTarget = {
    bg = "#150e0c",
    fg = "#ff6e6c",
  },
  BufferVisibleWARN = {
    bg = "#150e0c",
    fg = "#fede6d",
  },
  Character = {
    fg = "#f89068",
  },
  CmpDocumentation = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  CmpDocumentationBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  CmpGhostText = {
    fg = "#442821",
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#fff4ee",
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#3e2f2e",
    strikethrough = true,
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#fdb594",
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#fdb594",
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#f89068",
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#f89068",
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#dfbdba",
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
    fg = "#f89068",
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#f89068",
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#b08379",
  },
  CodeBlock = {
    bg = "#150e0c",
  },
  CodeiumSuggestion = {
    fg = "#442821",
  },
  ColorColumn = {
    bg = "#160f0d",
  },
  Comment = {
    fg = "#b08379",
    italic = true,
  },
  ComplHint = {
    fg = "#442821",
  },
  Conceal = {
    fg = "#a38176",
  },
  Constant = {
    fg = "#fa933a",
  },
  CopilotAnnotation = {
    fg = "#442821",
  },
  CopilotSuggestion = {
    fg = "#442821",
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#fff4ee",
    fg = "#1b1310",
  },
  CursorColumn = {
    bg = "#30201b",
  },
  CursorIM = {
    bg = "#fff4ee",
    fg = "#1b1310",
  },
  CursorLine = {
    bg = "#30201b",
  },
  CursorLineNr = {
    bold = true,
    fg = "#fa933a",
  },
  DapStoppedLine = {
    bg = "#322719",
  },
  DashboardDesc = {
    fg = "#fdaf8b",
  },
  DashboardFiles = {
    fg = "#fceed2",
  },
  DashboardFooter = {
    fg = "#fdb594",
  },
  DashboardHeader = {
    fg = "#fceed2",
  },
  DashboardIcon = {
    fg = "#fdaf8b",
  },
  DashboardKey = {
    fg = "#fa933a",
  },
  DashboardMruIcon = {
    fg = "#f56d88",
  },
  DashboardMruTitle = {
    fg = "#fdaf8b",
  },
  DashboardProjectIcon = {
    fg = "#fede6d",
  },
  DashboardProjectTitle = {
    fg = "#fdaf8b",
  },
  DashboardProjectTitleIcon = {
    fg = "#fa933a",
  },
  DashboardShortCut = {
    fg = "#fdaf8b",
  },
  DashboardShortCutIcon = {
    fg = "#f56d88",
  },
  Debug = {
    fg = "#fa933a",
  },
  DefinitionCount = {
    fg = "#f56d88",
  },
  DefinitionIcon = {
    fg = "#fceed2",
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#de5152",
  },
  DiagnosticHint = {
    fg = "#f89068",
  },
  DiagnosticInfo = {
    fg = "#fa9c3a",
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#de5152",
    undercurl = true,
  },
  DiagnosticUnderlineHint = {
    sp = "#f89068",
    undercurl = true,
  },
  DiagnosticUnderlineInfo = {
    sp = "#fa9c3a",
    undercurl = true,
  },
  DiagnosticUnderlineWarn = {
    sp = "#fede6d",
    undercurl = true,
  },
  DiagnosticUnnecessary = {
    fg = "#442821",
  },
  DiagnosticVirtualTextError = {
    bg = "#2f1917",
    fg = "#de5152",
  },
  DiagnosticVirtualTextHint = {
    bg = "#312019",
    fg = "#f89068",
  },
  DiagnosticVirtualTextInfo = {
    bg = "#312114",
    fg = "#fa9c3a",
  },
  DiagnosticVirtualTextWarn = {
    bg = "#322719",
    fg = "#fede6d",
  },
  DiagnosticWarn = {
    fg = "#fede6d",
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#4a3328",
  },
  DiffChange = {
    bg = "#211613",
  },
  DiffDelete = {
    bg = "#4c2321",
  },
  DiffText = {
    bg = "#442821",
  },
  Directory = {
    fg = "#fceed2",
  },
  EndOfBuffer = {
    fg = "#1b1310",
  },
  Error = {
    fg = "#de5152",
  },
  ErrorMsg = {
    fg = "#de5152",
  },
  FlashBackdrop = {
    fg = "#725248",
  },
  FlashLabel = {
    bg = "#ee506a",
    bold = true,
    fg = "#fff4ee",
  },
  FloatBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  FloatTitle = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  FoldColumn = {
    bg = "#1b1310",
    fg = "#b08379",
  },
  Folded = {
    bg = "#3e2f2e",
    fg = "#fceed2",
  },
  Foo = {
    bg = "#ee506a",
    fg = "#fff4ee",
  },
  Function = {
    fg = "#fceed2",
  },
  FzfLuaBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#dfbdba",
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#fff4ee",
  },
  FzfLuaFzfPointer = {
    fg = "#ee506a",
  },
  FzfLuaFzfSeparator = {
    bg = "#150e0c",
    fg = "#fa933a",
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  FzfLuaTitle = {
    bg = "#150e0c",
    fg = "#fa933a",
  },
  GitGutterAdd = {
    fg = "#f89068",
  },
  GitGutterAddLineNr = {
    fg = "#f89068",
  },
  GitGutterChange = {
    fg = "#fa9c3a",
  },
  GitGutterChangeLineNr = {
    fg = "#fa9c3a",
  },
  GitGutterDelete = {
    fg = "#ff6e6c",
  },
  GitGutterDeleteLineNr = {
    fg = "#ff6e6c",
  },
  GitSignsAdd = {
    fg = "#f89068",
  },
  GitSignsChange = {
    fg = "#fa9c3a",
  },
  GitSignsDelete = {
    fg = "#ff6e6c",
  },
  GlyphPalette1 = {
    fg = "#de5152",
  },
  GlyphPalette2 = {
    fg = "#f89068",
  },
  GlyphPalette3 = {
    fg = "#fede6d",
  },
  GlyphPalette4 = {
    fg = "#fceed2",
  },
  GlyphPalette6 = {
    fg = "#fa9c3a",
  },
  GlyphPalette7 = {
    fg = "#fff4ee",
  },
  GlyphPalette9 = {
    fg = "#ff6e6c",
  },
  GrugFarHelpHeader = {
    fg = "#b08379",
  },
  GrugFarHelpHeaderKey = {
    fg = "#fdaf8b",
  },
  GrugFarInputLabel = {
    fg = "#fdb594",
  },
  GrugFarInputPlaceholder = {
    fg = "#725248",
  },
  GrugFarResultsChangeIndicator = {
    fg = "#fa9c3a",
  },
  GrugFarResultsHeader = {
    fg = "#fa933a",
  },
  GrugFarResultsLineColumn = {
    fg = "#725248",
  },
  GrugFarResultsLineNo = {
    fg = "#725248",
  },
  GrugFarResultsMatch = {
    bg = "#ff6e6c",
    fg = "#160f0d",
  },
  GrugFarResultsStats = {
    fg = "#fceed2",
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#261e1a",
  },
  Headline2 = {
    bg = "#261d15",
  },
  Headline3 = {
    bg = "#261914",
  },
  Headline4 = {
    bg = "#261914",
  },
  Headline5 = {
    bg = "#261816",
  },
  Headline6 = {
    bg = "#261816",
  },
  Headline7 = {
    bg = "#261912",
  },
  Headline8 = {
    bg = "#261815",
  },
  HopNextKey = {
    bold = true,
    fg = "#ee506a",
  },
  HopNextKey1 = {
    bold = true,
    fg = "#fa9c3a",
  },
  HopNextKey2 = {
    fg = "#a16529",
  },
  HopUnmatched = {
    fg = "#725248",
  },
  IblIndent = {
    fg = "#3e2f2e",
    nocombine = true,
  },
  IblScope = {
    fg = "#fdb594",
    nocombine = true,
  },
  Identifier = {
    fg = "#f56d88",
  },
  IlluminatedWordRead = {
    bg = "#3e2f2e",
  },
  IlluminatedWordText = {
    bg = "#3e2f2e",
  },
  IlluminatedWordWrite = {
    bg = "#3e2f2e",
  },
  IncSearch = {
    bg = "#fa933a",
    fg = "#160f0d",
  },
  IndentBlanklineChar = {
    fg = "#3e2f2e",
    nocombine = true,
  },
  IndentBlanklineContextChar = {
    fg = "#fdb594",
    nocombine = true,
  },
  IndentLine = {
    fg = "#3e2f2e",
    nocombine = true,
  },
  IndentLineCurrent = {
    fg = "#fdb594",
    nocombine = true,
  },
  Italic = {
    fg = "#fff4ee",
    italic = true,
  },
  Keyword = {
    fg = "#fdaf8b",
    italic = true,
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ee506a",
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#3e2f2e",
  },
  LeapBackdrop = {
    fg = "#725248",
  },
  LeapLabel = {
    bold = true,
    fg = "#ee506a",
  },
  LeapMatch = {
    bg = "#ee506a",
    bold = true,
    fg = "#fff4ee",
  },
  LineNr = {
    fg = "#3e2f2e",
  },
  LineNrAbove = {
    fg = "#3e2f2e",
  },
  LineNrBelow = {
    fg = "#3e2f2e",
  },
  LspCodeLens = {
    fg = "#b08379",
  },
  LspFloatWinBorder = {
    fg = "#d0957a",
  },
  LspFloatWinNormal = {
    bg = "#150e0c",
  },
  LspInfoBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  LspInlayHint = {
    bg = "#1f1512",
    fg = "#725248",
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
    bg = "#3e2f2e",
  },
  LspReferenceText = {
    bg = "#3e2f2e",
  },
  LspReferenceWrite = {
    bg = "#3e2f2e",
  },
  LspSagaBorderTitle = {
    fg = "#fdaf8b",
  },
  LspSagaCodeActionBorder = {
    fg = "#fceed2",
  },
  LspSagaCodeActionContent = {
    fg = "#f56d88",
  },
  LspSagaCodeActionTitle = {
    fg = "#fdb594",
  },
  LspSagaDefPreviewBorder = {
    fg = "#f89068",
  },
  LspSagaFinderSelection = {
    fg = "#664536",
  },
  LspSagaHoverBorder = {
    fg = "#fceed2",
  },
  LspSagaRenameBorder = {
    fg = "#f89068",
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff6e6c",
  },
  LspSignatureActiveParameter = {
    bg = "#39271f",
    bold = true,
  },
  MatchParen = {
    bold = true,
    fg = "#fa933a",
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true,
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
    underline = true,
  },
  MiniCursorword = {
    bg = "#3e2f2e",
  },
  MiniCursorwordCurrent = {
    bg = "#3e2f2e",
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#ff6e6c",
    fg = "#160f0d",
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#f89068",
    fg = "#160f0d",
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#f89068",
  },
  MiniDiffSignChange = {
    fg = "#fa9c3a",
  },
  MiniDiffSignDelete = {
    fg = "#ff6e6c",
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#fff4ee",
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#150e0c",
    bold = true,
    fg = "#d0957a",
  },
  MiniHipatternsFixme = {
    bg = "#de5152",
    bold = true,
    fg = "#160f0d",
  },
  MiniHipatternsHack = {
    bg = "#fede6d",
    bold = true,
    fg = "#160f0d",
  },
  MiniHipatternsNote = {
    bg = "#f89068",
    bold = true,
    fg = "#160f0d",
  },
  MiniHipatternsTodo = {
    bg = "#fa9c3a",
    bold = true,
    fg = "#160f0d",
  },
  MiniIconsAzure = {
    fg = "#fa9c3a",
  },
  MiniIconsBlue = {
    fg = "#fceed2",
  },
  MiniIconsCyan = {
    fg = "#f89068",
  },
  MiniIconsGreen = {
    fg = "#f89068",
  },
  MiniIconsGrey = {
    fg = "#fff4ee",
  },
  MiniIconsOrange = {
    fg = "#fa933a",
  },
  MiniIconsPurple = {
    fg = "#f56d88",
  },
  MiniIconsRed = {
    fg = "#ff6e6c",
  },
  MiniIconsYellow = {
    fg = "#fede6d",
  },
  MiniIndentscopePrefix = {
    nocombine = true,
  },
  MiniIndentscopeSymbol = {
    fg = "#fdb594",
    nocombine = true,
  },
  MiniJump = {
    bg = "#ee506a",
    fg = "#ffffff",
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#ee506a",
    nocombine = true,
  },
  MiniJump2dSpotAhead = {
    bg = "#150e0c",
    fg = "#f89068",
    nocombine = true,
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#fa933a",
    nocombine = true,
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
    bg = "#150e0c",
    fg = "#f89068",
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
    bg = "#150e0c",
    fg = "#fa9c3a",
  },
  MiniStarterCurrent = {
    nocombine = true,
  },
  MiniStarterFooter = {
    fg = "#fede6d",
    italic = true,
  },
  MiniStarterHeader = {
    fg = "#fceed2",
  },
  MiniStarterInactive = {
    fg = "#b08379",
    italic = true,
  },
  MiniStarterItem = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  MiniStarterItemBullet = {
    fg = "#d0957a",
  },
  MiniStarterItemPrefix = {
    fg = "#fede6d",
  },
  MiniStarterQuery = {
    fg = "#fa9c3a",
  },
  MiniStarterSection = {
    fg = "#fdb594",
  },
  MiniStatuslineDevinfo = {
    bg = "#3e2f2e",
    fg = "#dfbdba",
  },
  MiniStatuslineFileinfo = {
    bg = "#3e2f2e",
    fg = "#dfbdba",
  },
  MiniStatuslineFilename = {
    bg = "#30201b",
    fg = "#dfbdba",
  },
  MiniStatuslineInactive = {
    bg = "#150e0c",
    fg = "#fceed2",
  },
  MiniStatuslineModeCommand = {
    bg = "#fede6d",
    bold = true,
    fg = "#160f0d",
  },
  MiniStatuslineModeInsert = {
    bg = "#f89068",
    bold = true,
    fg = "#160f0d",
  },
  MiniStatuslineModeNormal = {
    bg = "#fceed2",
    bold = true,
    fg = "#160f0d",
  },
  MiniStatuslineModeOther = {
    bg = "#f89068",
    bold = true,
    fg = "#160f0d",
  },
  MiniStatuslineModeReplace = {
    bg = "#ff6e6c",
    bold = true,
    fg = "#160f0d",
  },
  MiniStatuslineModeVisual = {
    bg = "#f56d88",
    bold = true,
    fg = "#160f0d",
  },
  MiniSurround = {
    bg = "#fa933a",
    fg = "#160f0d",
  },
  MiniTablineCurrent = {
    bg = "#3e2f2e",
    fg = "#fff4ee",
  },
  MiniTablineFill = {
    bg = "#160f0d",
  },
  MiniTablineHidden = {
    bg = "#150e0c",
    fg = "#a38176",
  },
  MiniTablineModifiedCurrent = {
    bg = "#3e2f2e",
    fg = "#fede6d",
  },
  MiniTablineModifiedHidden = {
    bg = "#150e0c",
    fg = "#baa151",
  },
  MiniTablineModifiedVisible = {
    bg = "#150e0c",
    fg = "#fede6d",
  },
  MiniTablineTabpagesection = {
    bg = "#3e2f2e",
    fg = "NONE",
  },
  MiniTablineVisible = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  MiniTestEmphasis = {
    bold = true,
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff6e6c",
  },
  MiniTestPass = {
    bold = true,
    fg = "#f89068",
  },
  MiniTrailspace = {
    bg = "#ff6e6c",
  },
  ModeMsg = {
    bold = true,
    fg = "#dfbdba",
  },
  MoreMsg = {
    fg = "#fceed2",
  },
  MsgArea = {
    fg = "#dfbdba",
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
    fg = "#fff4ee",
  },
  NavicText = {
    bg = "NONE",
    fg = "#fff4ee",
  },
  NeoTreeDimText = {
    fg = "#3e2f2e",
  },
  NeoTreeFileName = {
    fg = "#dfbdba",
  },
  NeoTreeGitModified = {
    fg = "#fa933a",
  },
  NeoTreeGitStaged = {
    fg = "#fa9c3a",
  },
  NeoTreeGitUntracked = {
    fg = "#f56d88",
  },
  NeoTreeNormal = {
    bg = "#150e0c",
    fg = "#dfbdba",
  },
  NeoTreeNormalNC = {
    bg = "#150e0c",
    fg = "#dfbdba",
  },
  NeoTreeTabActive = {
    bg = "#150e0c",
    bold = true,
    fg = "#fceed2",
  },
  NeoTreeTabInactive = {
    bg = "#110b0a",
    fg = "#725248",
  },
  NeoTreeTabSeparatorActive = {
    bg = "#150e0c",
    fg = "#fceed2",
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#110b0a",
    fg = "#1b1310",
  },
  NeogitBranch = {
    fg = "#f56d88",
  },
  NeogitDiffAddHighlight = {
    bg = "#4a3328",
    fg = "#f89068",
  },
  NeogitDiffContextHighlight = {
    bg = "#2d211f",
    fg = "#dfbdba",
  },
  NeogitDiffDeleteHighlight = {
    bg = "#4c2321",
    fg = "#ff6e6c",
  },
  NeogitHunkHeader = {
    bg = "#30201b",
    fg = "#fff4ee",
  },
  NeogitHunkHeaderHighlight = {
    bg = "#3e2f2e",
    fg = "#fceed2",
  },
  NeogitRemote = {
    fg = "#f56d88",
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#f56d88",
  },
  NeotestBorder = {
    fg = "#fceed2",
  },
  NeotestDir = {
    fg = "#fceed2",
  },
  NeotestExpandMarker = {
    fg = "#dfbdba",
  },
  NeotestFailed = {
    fg = "#ff6e6c",
  },
  NeotestFile = {
    fg = "#f89068",
  },
  NeotestFocused = {
    fg = "#fede6d",
  },
  NeotestIndent = {
    fg = "#dfbdba",
  },
  NeotestMarked = {
    fg = "#fceed2",
  },
  NeotestNamespace = {
    fg = "#d69170",
  },
  NeotestPassed = {
    fg = "#f89068",
  },
  NeotestRunning = {
    fg = "#fede6d",
  },
  NeotestSkipped = {
    fg = "#fceed2",
  },
  NeotestTarget = {
    fg = "#fceed2",
  },
  NeotestTest = {
    fg = "#dfbdba",
  },
  NeotestWinSelect = {
    fg = "#fceed2",
  },
  NoiceCmdlineIconInput = {
    fg = "#fede6d",
  },
  NoiceCmdlineIconLua = {
    fg = "#fdb594",
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#fede6d",
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#fdb594",
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#fede6d",
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#fdb594",
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#dfbdba",
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
    fg = "#725248",
  },
  Normal = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NormalFloat = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  NormalNC = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NormalSB = {
    bg = "#150e0c",
    fg = "#dfbdba",
  },
  NotifyBackground = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NotifyDEBUGBody = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NotifyDEBUGBorder = {
    bg = "#1b1310",
    fg = "#483530",
  },
  NotifyDEBUGIcon = {
    fg = "#b08379",
  },
  NotifyDEBUGTitle = {
    fg = "#b08379",
  },
  NotifyERRORBody = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NotifyERRORBorder = {
    bg = "#1b1310",
    fg = "#562624",
  },
  NotifyERRORIcon = {
    fg = "#de5152",
  },
  NotifyERRORTitle = {
    fg = "#de5152",
  },
  NotifyINFOBody = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NotifyINFOBorder = {
    bg = "#1b1310",
    fg = "#5e3c1d",
  },
  NotifyINFOIcon = {
    fg = "#fa9c3a",
  },
  NotifyINFOTitle = {
    fg = "#fa9c3a",
  },
  NotifyTRACEBody = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NotifyTRACEBorder = {
    bg = "#1b1310",
    fg = "#5c2e34",
  },
  NotifyTRACEIcon = {
    fg = "#f56d88",
  },
  NotifyTRACETitle = {
    fg = "#f56d88",
  },
  NotifyWARNBody = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  NotifyWARNBorder = {
    bg = "#1b1310",
    fg = "#5f502c",
  },
  NotifyWARNIcon = {
    fg = "#fede6d",
  },
  NotifyWARNTitle = {
    fg = "#fede6d",
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#fceed2",
  },
  NvimTreeGitDeleted = {
    fg = "#ff6e6c",
  },
  NvimTreeGitDirty = {
    fg = "#fa9c3a",
  },
  NvimTreeGitNew = {
    fg = "#f89068",
  },
  NvimTreeImageFile = {
    fg = "#dfbdba",
  },
  NvimTreeIndentMarker = {
    fg = "#3e2f2e",
  },
  NvimTreeNormal = {
    bg = "#150e0c",
    fg = "#dfbdba",
  },
  NvimTreeNormalNC = {
    bg = "#150e0c",
    fg = "#dfbdba",
  },
  NvimTreeOpenedFile = {
    bg = "#30201b",
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#fceed2",
  },
  NvimTreeSpecialFile = {
    fg = "#f56d88",
    underline = true,
  },
  NvimTreeSymlink = {
    fg = "#fceed2",
  },
  NvimTreeWinSeparator = {
    bg = "#150e0c",
    fg = "#150e0c",
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#fdb594",
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#fa933a",
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#f56d88",
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#311c1c",
    fg = "#f56d88",
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#fdb594",
  },
  Operator = {
    fg = "#fed576",
  },
  Pmenu = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  PmenuMatch = {
    bg = "#150e0c",
    fg = "#fdb594",
  },
  PmenuMatchSel = {
    bg = "#372928",
    fg = "#fdb594",
  },
  PmenuSbar = {
    bg = "#211a17",
  },
  PmenuSel = {
    bg = "#372928",
  },
  PmenuThumb = {
    bg = "#3e2f2e",
  },
  PreProc = {
    fg = "#fdaf8b",
  },
  Question = {
    fg = "#fceed2",
  },
  QuickFixLine = {
    bg = "#664536",
    bold = true,
  },
  RainbowDelimiterBlue = {
    fg = "#fceed2",
  },
  RainbowDelimiterCyan = {
    fg = "#fdaf8b",
  },
  RainbowDelimiterGreen = {
    fg = "#f89068",
  },
  RainbowDelimiterOrange = {
    fg = "#fa933a",
  },
  RainbowDelimiterRed = {
    fg = "#ff6e6c",
  },
  RainbowDelimiterViolet = {
    fg = "#f56d88",
  },
  RainbowDelimiterYellow = {
    fg = "#fede6d",
  },
  ReferencesCount = {
    fg = "#f56d88",
  },
  ReferencesIcon = {
    fg = "#fceed2",
  },
  RenderMarkdownBullet = {
    fg = "#fa933a",
  },
  RenderMarkdownCode = {
    bg = "#150e0c",
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#fa933a",
  },
  RenderMarkdownH1Bg = {
    bg = "#322923",
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#fceed2",
  },
  RenderMarkdownH2Bg = {
    bg = "#322719",
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#fede6d",
  },
  RenderMarkdownH3Bg = {
    bg = "#312019",
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#f89068",
  },
  RenderMarkdownH4Bg = {
    bg = "#312019",
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#f89068",
  },
  RenderMarkdownH5Bg = {
    bg = "#311c1c",
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#f56d88",
  },
  RenderMarkdownH6Bg = {
    bg = "#311c1c",
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#f56d88",
  },
  RenderMarkdownH7Bg = {
    bg = "#312014",
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#fa933a",
  },
  RenderMarkdownH8Bg = {
    bg = "#321c19",
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff6e6c",
  },
  RenderMarkdownTableHead = {
    fg = "#ff6e6c",
  },
  RenderMarkdownTableRow = {
    fg = "#fa933a",
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#de5152",
  },
  ScrollbarErrorHandle = {
    bg = "#30201b",
    fg = "#de5152",
  },
  ScrollbarHandle = {
    bg = "#30201b",
    fg = "NONE",
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#f89068",
  },
  ScrollbarHintHandle = {
    bg = "#30201b",
    fg = "#f89068",
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#fa9c3a",
  },
  ScrollbarInfoHandle = {
    bg = "#30201b",
    fg = "#fa9c3a",
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#f56d88",
  },
  ScrollbarMiscHandle = {
    bg = "#30201b",
    fg = "#f56d88",
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#fa933a",
  },
  ScrollbarSearchHandle = {
    bg = "#30201b",
    fg = "#fa933a",
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#fede6d",
  },
  ScrollbarWarnHandle = {
    bg = "#30201b",
    fg = "#fede6d",
  },
  Search = {
    bg = "#d69170",
    fg = "#fff4ee",
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#f89068",
  },
  SidekickSignChange = {
    fg = "#fa9c3a",
  },
  SidekickSignDelete = {
    fg = "#ff6e6c",
  },
  SignColumn = {
    bg = "#1b1310",
    fg = "#3e2f2e",
  },
  SignColumnSB = {
    bg = "#150e0c",
    fg = "#3e2f2e",
  },
  SnacksDashboardDesc = {
    fg = "#fdaf8b",
  },
  SnacksDashboardDir = {
    fg = "#725248",
  },
  SnacksDashboardFooter = {
    fg = "#fdb594",
  },
  SnacksDashboardHeader = {
    fg = "#fceed2",
  },
  SnacksDashboardIcon = {
    fg = "#fdb594",
  },
  SnacksDashboardKey = {
    fg = "#fa933a",
  },
  SnacksDashboardSpecial = {
    fg = "#f56d88",
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#fdb594",
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#32231d",
    fg = "#fdb594",
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#fdb594",
  },
  SnacksIndent = {
    fg = "#3e2f2e",
    nocombine = true,
  },
  SnacksIndent1 = {
    fg = "#fceed2",
    nocombine = true,
  },
  SnacksIndent2 = {
    fg = "#fede6d",
    nocombine = true,
  },
  SnacksIndent3 = {
    fg = "#f89068",
    nocombine = true,
  },
  SnacksIndent4 = {
    fg = "#f89068",
    nocombine = true,
  },
  SnacksIndent5 = {
    fg = "#f56d88",
    nocombine = true,
  },
  SnacksIndent6 = {
    fg = "#f56d88",
    nocombine = true,
  },
  SnacksIndent7 = {
    fg = "#fa933a",
    nocombine = true,
  },
  SnacksIndent8 = {
    fg = "#ff6e6c",
    nocombine = true,
  },
  SnacksIndentScope = {
    fg = "#fdb594",
    nocombine = true,
  },
  SnacksInputBorder = {
    fg = "#fede6d",
  },
  SnacksInputIcon = {
    fg = "#fdb594",
  },
  SnacksInputTitle = {
    fg = "#fede6d",
  },
  SnacksNotifierBorderDebug = {
    bg = "#1b1310",
    fg = "#57403a",
  },
  SnacksNotifierBorderError = {
    bg = "#1b1310",
    fg = "#692c2a",
  },
  SnacksNotifierBorderInfo = {
    bg = "#1b1310",
    fg = "#744a21",
  },
  SnacksNotifierBorderTrace = {
    bg = "#1b1310",
    fg = "#723740",
  },
  SnacksNotifierBorderWarn = {
    bg = "#1b1310",
    fg = "#766435",
  },
  SnacksNotifierDebug = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  SnacksNotifierError = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  SnacksNotifierIconDebug = {
    fg = "#b08379",
  },
  SnacksNotifierIconError = {
    fg = "#de5152",
  },
  SnacksNotifierIconInfo = {
    fg = "#fa9c3a",
  },
  SnacksNotifierIconTrace = {
    fg = "#f56d88",
  },
  SnacksNotifierIconWarn = {
    fg = "#fede6d",
  },
  SnacksNotifierInfo = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  SnacksNotifierTitleDebug = {
    fg = "#b08379",
  },
  SnacksNotifierTitleError = {
    fg = "#de5152",
  },
  SnacksNotifierTitleInfo = {
    fg = "#fa9c3a",
  },
  SnacksNotifierTitleTrace = {
    fg = "#f56d88",
  },
  SnacksNotifierTitleWarn = {
    fg = "#fede6d",
  },
  SnacksNotifierTrace = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  SnacksNotifierWarn = {
    bg = "#1b1310",
    fg = "#fff4ee",
  },
  SnacksPickerBoxTitle = {
    bg = "#150e0c",
    fg = "#fa933a",
  },
  SnacksPickerInputBorder = {
    bg = "#150e0c",
    fg = "#fa933a",
  },
  SnacksPickerInputTitle = {
    bg = "#150e0c",
    fg = "#fa933a",
  },
  SnacksPickerPickWin = {
    bg = "#d69170",
    bold = true,
    fg = "#fff4ee",
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ee506a",
    bold = true,
    fg = "#fff4ee",
  },
  SnacksPickerSelected = {
    fg = "#ee506a",
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#32231d",
    fg = "#fdb594",
  },
  SnacksProfilerBadgeTrace = {
    bg = "#1f1512",
    fg = "#725248",
  },
  SnacksProfilerIconInfo = {
    bg = "#5f4438",
    fg = "#fdb594",
  },
  SnacksProfilerIconTrace = {
    bg = "#271915",
    fg = "#725248",
  },
  SnacksZenIcon = {
    fg = "#f56d88",
  },
  Sneak = {
    bg = "#f56d88",
    fg = "#30201b",
  },
  SneakScope = {
    bg = "#664536",
  },
  Special = {
    fg = "#fdb594",
  },
  SpecialKey = {
    fg = "#725248",
  },
  SpellBad = {
    sp = "#de5152",
    undercurl = true,
  },
  SpellCap = {
    sp = "#fede6d",
    undercurl = true,
  },
  SpellLocal = {
    sp = "#fa9c3a",
    undercurl = true,
  },
  SpellRare = {
    sp = "#f89068",
    undercurl = true,
  },
  Statement = {
    fg = "#f56d88",
  },
  StatusLine = {
    bg = "#150e0c",
    fg = "#dfbdba",
  },
  StatusLineNC = {
    bg = "#150e0c",
    fg = "#3e2f2e",
  },
  String = {
    fg = "#f89068",
  },
  Substitute = {
    bg = "#ff6e6c",
    fg = "#160f0d",
  },
  SupermavenSuggestion = {
    fg = "#442821",
  },
  TabLine = {
    bg = "#150e0c",
    fg = "#3e2f2e",
  },
  TabLineFill = {
    bg = "#160f0d",
  },
  TabLineSel = {
    bg = "#fceed2",
    fg = "#160f0d",
  },
  TargetWord = {
    fg = "#fdaf8b",
  },
  TelescopeBorder = {
    bg = "#150e0c",
    fg = "#d0957a",
  },
  TelescopeNormal = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  TelescopePromptBorder = {
    bg = "#150e0c",
    fg = "#fa933a",
  },
  TelescopePromptTitle = {
    bg = "#150e0c",
    fg = "#fa933a",
  },
  TelescopeResultsComment = {
    fg = "#725248",
  },
  Title = {
    bold = true,
    fg = "#fceed2",
  },
  Todo = {
    bg = "#fede6d",
    fg = "#1b1310",
  },
  TreesitterContext = {
    bg = "#372928",
  },
  TroubleCount = {
    bg = "#3e2f2e",
    fg = "#f56d88",
  },
  TroubleNormal = {
    bg = "#150e0c",
    fg = "#fff4ee",
  },
  TroubleText = {
    fg = "#dfbdba",
  },
  Type = {
    fg = "#fdb594",
  },
  Underlined = {
    underline = true,
  },
  VertSplit = {
    fg = "#160f0d",
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#fede6d",
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#fceed2",
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#fede6d",
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#f89068",
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#f89068",
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#f56d88",
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#f56d88",
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#fa933a",
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#ff6e6c",
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#fede6d",
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#fceed2",
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#fa933a",
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#fceed2",
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#f89068",
  },
  Visual = {
    bg = "#664536",
  },
  VisualNOS = {
    bg = "#664536",
  },
  WarningMsg = {
    fg = "#fede6d",
  },
  WhichKey = {
    fg = "#fdaf8b",
  },
  WhichKeyDesc = {
    fg = "#f56d88",
  },
  WhichKeyGroup = {
    fg = "#fceed2",
  },
  WhichKeyNormal = {
    bg = "#150e0c",
  },
  WhichKeySeparator = {
    fg = "#b08379",
  },
  WhichKeyValue = {
    fg = "#a38176",
  },
  Whitespace = {
    fg = "#3e2f2e",
  },
  WildMenu = {
    bg = "#664536",
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#160f0d",
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#312114",
    fg = "#fa9c3a",
  },
  debugPC = {
    bg = "#150e0c",
  },
  diffAdded = {
    bg = "#4a3328",
    fg = "#f89068",
  },
  diffChanged = {
    bg = "#211613",
    fg = "#fa9c3a",
  },
  diffFile = {
    fg = "#fceed2",
  },
  diffIndexLine = {
    fg = "#f56d88",
  },
  diffLine = {
    fg = "#b08379",
  },
  diffNewFile = {
    bg = "#4a3328",
    fg = "#fdb594",
  },
  diffOldFile = {
    bg = "#4c2321",
    fg = "#fdb594",
  },
  diffRemoved = {
    bg = "#4c2321",
    fg = "#ff6e6c",
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#de5152",
  },
  healthSuccess = {
    fg = "#fa9c3a",
  },
  healthWarning = {
    fg = "#fede6d",
  },
  helpCommand = {
    bg = "#442821",
    fg = "#fceed2",
  },
  helpExample = {
    fg = "#b08379",
  },
  htmlH1 = {
    bold = true,
    fg = "#f56d88",
  },
  htmlH2 = {
    bold = true,
    fg = "#fceed2",
  },
  illuminatedCurWord = {
    bg = "#3e2f2e",
  },
  illuminatedWord = {
    bg = "#3e2f2e",
  },
  lCursor = {
    bg = "#fff4ee",
    fg = "#1b1310",
  },
  qfFileName = {
    fg = "#fceed2",
  },
  qfLineNr = {
    fg = "#a38176",
  },
}
