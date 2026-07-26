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
  colors.bg_shadow = rgba("#000000", 0.85)
  colors.bg_selection = rgba(colors.orange, 0.8)
  colors.bg_tooltip = rgba(colors.orange, 0.9)

  local obsidian = util.template(
    [[
/*
 * Tokyo Fire — Obsidian Theme
 * Theme: ${_style_name}
 * Upstream: ${_upstream_url}
 */

body {
  font-size: 16px;
  --font-monospace: "Fira Code", "Source Code Pro", monospace;
}

.CodeMirror pre.CodeMirror-line {
  font-size: 14px;
}

/* === DARK MODE === */

.theme-dark {
  --background-primary: ${bg_primary};
  --background-primary-alt: ${bg_primary};
  --background-secondary: ${bg_secondary};
  --background-secondary-alt: ${bg_tertiary};
  --background-modifier-border: ${bg_border};
  --background-modifier-box-shadow: ${bg_shadow};
  --background-modifier-form-field: var(--background-primary);
  --text-accent: ${orange};
  --text-accent-hover: ${orange};
  --text-normal: ${fg};
  --text-muted: ${comment};
  --text-faint: ${dark3};
  --text-error: ${red};
  --text-error-hover: ${red};
  --text-matched: ${fg};
  --text-on-accent: ${fg};
  --text-selection: ${bg_selection};
  --text-highlight-bg: ${orange};
  --interactive-normal: var(--background-primary);
  --interactive-hover: ${bg_tab_hover};
  --interactive-accent: ${orange};
  --interactive-accent-rgb: ${orange};
  --interactive-accent-hover: ${orange};
  --workspace-leaf-resize: ${dark3};
  --scrollbar-active-thumb-bg: ${bg_active};
  --scrollbar-bg: transparent;
  --scrollbar-thumb-bg: ${bg_scrollbar};
  --accent-strong: ${red};
  --accent-mild: ${yellow};
  --bw: ${fg};
  --lines-identation: ${dark3};
  --tooltip-bg: ${bg_tooltip};
}

/* === LIGHT MODE === */

.theme-light {
  --background-primary: ${bg_solid};
  --background-primary-alt: ${bg_dark_solid};
  --background-secondary: ${bg_dark_solid};
  --background-secondary-alt: ${bg_dark_solid};
  --background-modifier-border: ${bg_highlight_solid};
  --background-modifier-box-shadow: ${bg_shadow};
  --text-accent: ${orange};
  --text-accent-hover: ${orange};
  --text-normal: ${bg_solid};
  --text-muted: ${dark5};
  --text-faint: ${dark3};
  --text-error: ${red};
  --text-error-hover: ${red};
  --text-matched: ${fg};
  --text-on-accent: ${fg};
  --text-selection: ${bg_selection};
  --text-highlight-bg: ${orange};
  --interactive-accent: ${orange};
  --interactive-accent-rgb: ${orange};
  --interactive-accent-hover: ${orange};
  --workspace-leaf-resize: ${dark5};
  --accent-strong: ${red};
  --accent-mild: ${yellow};
  --bw: ${bg_solid};
  --lines-identation: ${dark3};
  --tooltip-bg: ${bg_tooltip};
}

/* === Titlebar === */

.titlebar {
  background-color: var(--background-secondary);
  border-bottom: 1px solid var(--background-primary);
}
.titlebar-inner {
  color: var(--text-normal);
}
.titlebar-text {
  color: var(--text-normal);
}
.titlebar-button.mod-close:hover {
  background-color: transparent;
  color: var(--text-accent);
}

/* === Heading sizes === */

.cm-header-1 {
  font-size: 30px;
  color: var(--text-accent);
}
.cm-header-2 {
  font-size: 26px;
}
.cm-header-3 {
  font-size: 22px;
}
.cm-header-4 {
  font-size: 20px;
}
.cm-header-5 {
  font-size: 18px;
}
.cm-header-6 {
  font-size: 18px;
  color: var(--text-muted);
}

/* === Clutter free edit mode === */

div:not(.CodeMirror-activeline) > .CodeMirror-line span.cm-formatting {
  display: none;
}
span.cm-image,
span.cm-link,
span.cm-url,
span.cm-formatting-list,
span.cm-formatting-code-block.cm-hmd-codeblock {
  display: inline !important;
}
span.cm-formatting-task {
  display: inline !important;
  font-family: monospace;
}

/* === Iframe === */

iframe {
  border-width: 0;
}

/* === Image hover === */

.markdown-preview-view img {
  display: block;
  margin-top: 20pt;
  margin-bottom: 20pt;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
  transition: transform 0.25s ease;
}
.markdown-preview-view img:hover {
  -webkit-transform: scale(2);
  transform: scale(2);
}

/* === Folder collapse fix === */

body:not(.is-grabbing) .nav-folder-title:hover .nav-folder-collapse-indicator {
  background: none;
}

/* === Highlight h1 in search === */

.markdown-preview-view .mod-highlighted h1 {
  color: white;
}

/* === Tooltip === */

.tooltip {
  background-color: var(--tooltip-bg);
  color: #fff;
  font-weight: bold;
}
.tooltip .tooltip-arrow {
  border-bottom: 5px solid var(--tooltip-bg);
}

/* === Settings active tabs === */

.horizontal-tab-nav-item.is-active,
.vertical-tab-nav-item.is-active {
  background-color: var(--background-primary);
}
.horizontal-tab-nav-item:hover,
.vertical-tab-nav-item:hover {
  background-color: var(--background-primary);
  transition: all 0.3s ease;
}

/* === Settings border === */

.modal.mod-settings .vertical-tab-header {
  border-right: 1px solid var(--background-primary);
}

/* === Range input === */

input[type="range"] {
  background-color: var(--background-secondary);
}

/* === Suggestion popup === */

.suggestion {
  border-radius: 4px;
}

/* === Drag overlay === */

.workspace-drop-overlay.mod-drag {
  background-color: var(--text-accent);
}

/* === Markdown source width === */

.markdown-source-view.is-readable-line-width .CodeMirror {
  max-width: 800px;
}

/* === Custom Checkbox === */

input[type="checkbox"] {
  -webkit-appearance: none;
  appearance: none;
  border-radius: 50%;
  border: 1px solid var(--text-faint);
  padding: 0;
}
input[type="checkbox"]:focus {
  outline: 0;
}
input[type="checkbox"]:checked {
  background-color: var(--text-accent);
  border: 1px solid var(--text-accent);
  background-position: center;
  background-size: 70%;
  background-repeat: no-repeat;
  background-image: url('data:image/svg+xml; utf8, <svg width="12px" height="10px" viewBox="0 0 12 8" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-4.000000, -6.000000)" fill="%23ffffff"><path d="M8.1043257,14.0367999 L4.52468714,10.5420499 C4.32525014,10.3497722 4.32525014,10.0368095 4.52468714,9.8424863 L5.24777413,9.1439454 C5.44721114,8.95166768 5.77142411,8.95166768 5.97086112,9.1439454 L8.46638057,11.5903727 L14.0291389,6.1442083 C14.2285759,5.95193057 14.5527889,5.95193057 14.7522259,6.1442083 L15.4753129,6.84377194 C15.6747499,7.03604967 15.6747499,7.35003511 15.4753129,7.54129009 L8.82741268,14.0367999 C8.62797568,14.2290777 8.3037627,14.2290777 8.1043257,14.0367999"></path></g></g></svg>');
}
.markdown-preview-view .task-list-item-checkbox {
  margin-left: -25px;
  top: 5px;
  cursor: pointer;
  filter: none;
}
.markdown-preview-view .task-list-item {
  padding-inline-start: 25px;
}

/* === Code block === */

.theme-dark code[class*="language-"],
.theme-dark pre[class*="language-"],
.theme-light code[class*="language-"],
.theme-light pre[class*="language-"] {
  background: var(--background-secondary);
}
.markdown-preview-view code,
.markdown-preview-view pre {
  background: var(--background-secondary);
  color: ${magenta};
}

/* === Selection in code === */

.theme-light .markdown-preview-view code::selection,
.theme-light .markdown-preview-view code > *::selection,
.theme-light .markdown-preview-view pre::selection,
.theme-light .markdown-preview-view pre > *::selection,
.theme-dark .markdown-preview-view code::selection,
.theme-dark .markdown-preview-view code > *::selection,
.theme-dark .markdown-preview-view pre::selection,
.theme-dark .markdown-preview-view pre > *::selection,
*::selection {
  color: #fff;
  background-color: var(--text-selection);
}

.CodeMirror-focused .CodeMirror-selected,
.CodeMirror-selected {
  background-color: var(--text-selection);
}

/* === Light mode operator === */

.theme-light .token.operator {
  background: hsla(0, 0%, 100%, 0);
}

/* === Vim mode === */

.cm-fat-cursor .CodeMirror-cursor {
  background: var(--text-accent);
}
.cm-animate-fat-cursor {
  background: var(--text-accent);
}

/* === Active line === */

.CodeMirror-activeline .CodeMirror-linebackground {
  background-color: rgba(0, 0, 0, 0.1) !important;
}

/* === Tag Pills === */

.tag {
  background-color: var(--text-accent);
  border: none;
  color: white !important;
  font-size: 11px;
  font-weight: bold;
  line-height: 1.6em;
  padding: 0px 7px 1px 7px;
  text-align: center;
  text-decoration: none !important;
  display: inline-block;
  margin: 0px 2px;
  cursor: pointer;
  border-radius: 10px;
}
.tag[href^="#important"] {
  background-color: red;
}
.tag[href^="#complete"] {
  background-color: green;
}
.tag[href^="#inprogress"] {
  background-color: orange;
}
.tag:hover {
  color: white;
  background-color: var(--text-accent-hover);
}

/* === Tag pane === */

.tag-pane-tag-text {
  background-color: var(--background-primary);
  color: var(--text-normal);
  border: none;
  font-size: 13px;
  padding: 1px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  cursor: pointer;
  border-radius: 14px;
  transition: all 0.2s ease;
}
.tag-pane-tag-count {
  background-color: var(--background-primary);
  color: var(--text-normal);
  border: none;
  font-size: 13px;
  padding: 2px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 0px 0px;
  cursor: pointer;
  border-radius: 14px;
  transition: all 0.2s ease;
}
.tag-pane-tag:hover > .tag-pane-tag-count,
.tag-pane-tag:hover > .tag-pane-tag-text {
  background-color: var(--text-accent);
  color: white;
  font-weight: bold;
}

/* === Indentation lines === */

.cm-hmd-list-indent .cm-tab,
ul ul {
  position: relative;
}
.cm-hmd-list-indent .cm-tab::before,
ul ul::before {
  content: "";
  border-left: 1px solid var(--lines-identation);
  position: absolute;
}
.cm-hmd-list-indent .cm-tab::before {
  left: 0;
  top: -5px;
  bottom: -4px;
}
ul ul::before {
  left: -15px;
  top: 0;
  bottom: 0;
}

/* === Settings buttons === */

.modal.mod-settings button:not(.mod-cta) {
  background-color: var(--text-accent);
  color: #fff;
  font-weight: bold;
}
.modal.mod-settings button:not(.mod-cta):hover {
  background-color: var(--text-accent-hover);
}

/* === Community themes === */

.community-theme-list {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
}
.community-theme {
  max-width: 600px;
}

/* === Transclusion tweaks === */

.markdown-embed-title {
  font-family: sans-serif;
  font-size: 10px;
  color: var(--text-accent);
  line-height: 10px;
  width: 100%;
  text-align: left;
  font-weight: 100;
  margin: -4px 0px;
}
.markdown-preview-view .markdown-embed {
  background-color: var(--background-primary);
  border-radius: 0px;
  border: 0;
  border-left: 1px solid var(--text-selection);
  margin: 0px -10px;
}
.markdown-embed {
  display: block;
  top: 0px;
}
.markdown-embed > .markdown-embed-content {
  display: inline;
  max-height: 100%;
  max-width: 100%;
  margin: -25px 0px -15px 0px;
  padding: 0px 0px 5px 0px;
}
.markdown-embed-content > * {
  display: block;
  max-height: 100%;
  max-width: 100%;
  margin: 10px 0px 5px 0px;
}
.markdown-embed-link {
  top: -3px;
  left: -20px;
  color: var(--accent-strong);
  cursor: pointer;
  position: absolute;
}
svg.link {
  width: 12px;
  height: 12px;
}
.file-embed-link {
  top: 10px;
  left: -10px;
  color: var(--accent-strong);
  cursor: pointer;
  position: relative;
}
.internal-embed,
.internal-embed > .markdown-embed > .markdown-embed-content {
  display: block;
  max-height: 100%;
  max-width: 100%;
  left: 0px;
}
.markdown-preview-view .file-embed {
  background-color: var(--background-primary);
  border-radius: 4px;
  border: 2px solid var(--text-selection);
  padding: 5px 20px 5px 20px;
  margin: 10px 0px 10px 0px;
}
.file-embed-title {
  font-size: 12px;
  height: 40px;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}

/* === Headings === */

h1 {
  font-size: 34px;
  line-height: 40px;
  padding-bottom: 10px;
  border-bottom: 2px solid var(--text-accent);
  color: var(--text-accent);
}
h2 {
  font-size: 26px;
  line-height: 36px;
  padding-top: 14px;
  padding-bottom: 6px;
  border-bottom: 2px solid var(--text-normal);
}
h3 {
  padding-bottom: 5px;
  border-bottom: 1px solid var(--text-muted);
}
h4 {
  padding-bottom: 4px;
  border-bottom: 1px dashed var(--text-muted);
}
h5 {
  padding-bottom: 3px;
  border-bottom: 1px dotted var(--text-muted);
}

/* === HR === */

.markdown-preview-view hr {
  height: 1px;
  border: none;
  background-color: var(--text-accent);
}

/* === GUI tweaks === */

.workspace-tab-header:hover {
  color: var(--text-accent);
  cursor: pointer;
}

.workspace-tab-header,
.workspace-tab-header-inner,
.workspace-tab-container-before,
.workspace-tab-container-after {
  transition: background-color 100ms linear;
}

/* === Ribbon === */

.workspace-ribbon-collapse-btn {
  margin-top: 0px;
  padding: 10px 6px 4px 6px;
  cursor: pointer;
  color: var(--text-faint);
  transform: none;
  transition: transform 100ms ease-in-out;
}
.workspace-ribbon.is-collapsed {
  background-color: var(--background-secondary-alt);
}
.workspace-ribbon.mod-left {
  border-right: 1px solid var(--background-primary);
}
.workspace-ribbon.mod-left.is-collapsed {
  border-right-color: transparent;
}
.workspace-ribbon.mod-right.is-collapsed {
  border-left-color: var(--background-secondary-alt);
}

/* === Resize handle === */

.workspace-split.mod-horizontal > * > .workspace-leaf-resize-handle {
  bottom: 0;
  left: 0;
  height: 3px;
  width: 100%;
  cursor: row-resize;
}
.workspace-leaf-resize-handle {
  transition: background-color 80ms linear;
}

/* === Tab header === */

.workspace-tab-header-container {
  display: flex;
  background-color: var(--background-secondary-alt);
  height: 36px;
  padding-top: 1px;
  border-bottom: 1px solid var(--background-primary);
}

/* === Search pane === */

input[type="text"],
input[type="email"],
input[type="password"],
input[type="number"] {
  padding: 5px 8px;
  font-size: 14px;
  border-radius: 4px;
}
.search-input {
  display: block;
  margin: 0 auto 10px auto;
  width: calc(100% - 20px);
}

/* === Suggestion highlight === */

.suggestion-item.is-selected {
  background-color: var(--text-accent);
}
.theme-light .suggestion-item.is-selected {
  color: #fff;
}

/* === Scrollbar === */

::-webkit-scrollbar-thumb {
  -webkit-border-radius: 4px;
}
::-webkit-scrollbar-thumb:active {
  -webkit-border-radius: 4px;
}

/* === Tabs === */

.workspace-tab-header-inner {
  padding: 9px 20px;
  height: 100%;
  display: flex;
}
.workspace-tab-container-before,
.workspace-tab-container-after {
  width: 0px;
  height: 100%;
}

/* === View header === */

.view-header-title {
  font-size: 14px;
  font-weight: 600;
}

/* === Active view header === */

.workspace-leaf.mod-active .view-header-icon {
  padding: 5px 10px;
  color: var(--interactive-accent);
  cursor: grab;
  position: relative;
  top: 2px;
}
.workspace-leaf.mod-active .view-header {
  background-color: var(--background-primary);
  border-bottom: 2px solid var(--interactive-accent);
}
.view-header {
  height: 36px;
  display: flex;
  border-top: 1px solid var(--background-secondary-alt);
  border-bottom: 2px solid var(--background-secondary-alt);
  background-color: var(--background-secondary-alt);
  z-index: 1;
}

/* === Gradient fix === */

.workspace-leaf.mod-active .view-header-title-container:after {
  background: var(--background-primary);
}
.view-header-title-container:after {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  width: 30px;
  height: 32px;
  background: var(--background-secondary-alt);
}

/* === Separators === */

.workspace-leaf-resize-handle {
  background-color: var(--background-secondary-alt);
}
.workspace-leaf-resize-handle:hover {
  background-color: var(--workspace-leaf-resize);
}

/* === Preview padding === */

.markdown-preview-view {
  padding: 20px 30px 30px 45px;
}

/* === Mark highlight === */

.theme-light .markdown-preview-view mark {
  color: #fff;
}
.markdown-preview-view mark {
  padding: 0 1px;
}

/* === Backlinks === */

.side-dock-collapsible-section-header {
  font-size: 12px;
  padding: 4px 14px 0 22px;
  user-select: none;
  cursor: pointer;
  position: relative;
}
.side-dock-collapsible-section-header.is-collapsed
  .side-dock-collapsible-section-header-indicator {
  transform: translateX(-9px) translateY(7px) rotate(-90deg);
}
.search-result-container {
  padding: 0px 4px 4px 4px;
}
.search-result-file-title {
  font-size: 14px;
  color: var(--text-accent);
  border-radius: 0px;
  border-top: 1px solid var(--background-modifier-border);
  padding: 2px 12px 0px 18px;
}
.search-result-file-matches {
  color: var(--text-muted);
  font-size: 12px;
  line-height: 16px;
  padding: 2px 0px;
  margin-bottom: -6px;
  border-bottom: 0px;
}
.search-result-file-match {
  color: var(--text-muted);
  font-size: 12px;
  line-height: 16px;
  padding: 2px 0px;
  margin-bottom: 4px;
  border-bottom: 0px;
}
.search-result-file-match:not(:first-child) {
  margin-top: 0px;
}
.search-result-file-matched-text {
  color: var(--text-matched);
  background-color: var(--text-highlight-bg);
}
.search-info-more-matches {
  color: var(--text-faint);
  text-decoration: overline;
  font-size: 10px;
  line-height: 16px;
}
.search-empty-state {
  color: var(--text-error);
  font-size: 12px;
  margin: 0 20px 15px 20px;
}

/* === Remove rounded corners === */

.workspace-tab-header.is-active {
  border-radius: 0px;
}
.nav-folder-title {
  border-radius: 0px;
}
.workspace-tab-container-before.is-before-active .workspace-tab-header-inner,
.workspace-tab-header.is-before-active .workspace-tab-header-inner {
  border-radius: 0px;
}
.workspace-tab-container-after.is-after-active .workspace-tab-header-inner,
.workspace-tab-header.is-after-active .workspace-tab-header-inner {
  border-bottom-left-radius: 0px;
}
.workspace-split.mod-left-split .workspace-tabs .workspace-leaf {
  border-top-left-radius: 0px;
}
.workspace-split.mod-right-split .workspace-tabs .workspace-leaf {
  border-top-right-radius: 0px;
}

/* === Status bar === */

.status-bar {
  background-color: var(--background-secondary-alt);
  border-top: 0px solid var(--background-modifier-border);
}

/* === Graph view === */

.graph-view.color-fill {
  color: var(--accent-strong);
}
.graph-view.color-circle {
  color: var(--text-normal);
}
.graph-view.color-line {
  color: var(--text-faint);
}
.graph-view.color-text {
  color: var(--text-normal);
}
.graph-view.color-fill-highlight {
  color: var(--interactive-accent);
}
.graph-view.color-line-highlight {
  color: rgb(var(--interactive-accent-rgb));
}
.CodeMirror-lines {
  color: var(--text-normal);
}
.CodeMirror-lines > *::selection {
  color: white;
}
.theme-light .graph-view.color-fill-tag,
.theme-dark .graph-view.color-fill-tag {
  color: var(--text-accent);
}
.theme-light .graph-view.color-fill-attachment,
.theme-dark .graph-view.color-fill-attachment {
  color: var(--text-muted);
}

/* === Line numbers === */

.cm-s-obsidian .CodeMirror-linenumber {
  color: var(--text-accent);
  opacity: 0.5;
  font-size: 14px;
  font-family: Consolas, monospace;
}
.CodeMirror-gutter-elt {
  position: absolute;
  cursor: default;
  z-index: 4;
}
.CodeMirror-linenumber {
  padding: 0 3px 0 0px;
  min-width: 20px;
  text-align: right;
  white-space: nowrap;
}

/* === Editor margins === */

.CodeMirror-lines {
  border-right: 1px solid var(--background-secondary);
  border-left: 1px solid var(--background-secondary);
}

/* === Hover popover === */

.popover.hover-popover {
  position: absolute;
  z-index: var(--layer-popover);
  transform: scale(0.85);
  max-height: 600px;
  min-height: 100px;
  width: 500px;
  overflow: hidden;
  padding: 0;
  border-bottom: none;
  transition: all 0.5s ease;
  opacity: 0.95;
}
.popover {
  background-color: var(--background-primary);
  border: 1px solid var(--background-primary-alt);
  box-shadow: 3px 3px 7px var(--background-modifier-box-shadow);
  border-radius: 6px;
  padding: 15px 20px 10px 20px;
  position: relative;
  font-weight: 500;
  -webkit-text-stroke: 0.2px;
  -webkit-font-smoothing: none;
  color: var(--bw);
}
.popover.hover-popover:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 0px;
  bottom: 0;
  left: 0;
  right: 0;
  background: linear-gradient(
    to bottom,
    transparent,
    var(--background-primary) 80%,
    var(--background-primary)
  );
}

/* === Footnotes === */

.footnotes {
  text-align: justify;
  hyphens: auto;
  font-size: 12px;
}
sup {
  vertical-align: top;
  font-size: 11px;
  display: inline-block;
  position: relative;
  margin: -4px 0 0 3px;
}
sub {
  vertical-align: bottom;
  font-size: 11px;
  display: inline-block;
  position: relative;
  margin: 0px 0 -4px 3px;
}

/* === Quote block === */

.markdown-preview-view blockquote {
  border-radius: 4px;
  border: 0px solid var(--background-modifier-border);
  background-color: var(--background-secondary);
  border-left: 5px solid var(--text-accent);
  padding: 14px 10px 10px 10px;
  display: block;
  margin-block-start: 0.5em;
  margin-block-end: 1em;
  margin-inline-start: 20px;
  text-align: justify;
  hyphens: auto;
}

/* === Lists === */

ul {
  list-style-type: disc;
}
ul ul {
  list-style-type: disc;
}
ul ul ul {
  list-style-type: circle;
}

/* === Tables === */

.markdown-preview-view table,
.markdown-preview-view th,
.markdown-preview-view td {
  border: 1px solid var(--text-faint);
}
.markdown-preview-view th {
  background-color: var(--background-secondary-alt);
}
.theme-dark .markdown-preview-view tr:nth-child(even) {
  background-color: rgba(255, 255, 255, 0.03);
}
.theme-light .markdown-preview-view tr:nth-child(even) {
  background-color: rgba(0, 0, 0, 0.05);
}
tbody {
  display: table-row-group;
  vertical-align: top;
  border-color: inherit;
}

/* === Nav folder === */

.nav-folder-children {
  column-width: 200px;
  column-rule: 1px solid var(--background-modifier-border);
}
.nav-file-title,
.nav-folder-title {
  white-space: normal;
  width: auto;
  line-height: 1.1;
}

/* === Preview text === */

.markdown-preview-view p {
  text-align: justify;
  hyphens: auto;
}

/* === Media === */

.markdown-preview-view audio,
.markdown-preview-view video {
  max-width: max(500px, 60%);
  outline: none;
}

/* === Mermaid === */

.label {
  font-family: Segoe UI, "trebuchet ms", verdana, arial, Fira Code, consolas, monospace !important;
  color: var(--text-normal) !important;
}
.label text {
  fill: var(--background-primary-alt) !important;
}
.node rect,
.node circle,
.node ellipse,
.node polygon,
.node path {
  fill: var(--background-modifier-border) !important;
  stroke: var(--text-normal) !important;
  stroke-width: 0.5px !important;
}
.node .label {
  text-align: center !important;
}
.node.clickable {
  cursor: pointer !important;
}
.arrowheadPath {
  fill: var(--text-faint) !important;
}
.edgePath .path {
  stroke: var(--text-faint) !important;
  stroke-width: 1.5px !important;
}
.flowchart-link {
  stroke: var(--text-faint) !important;
  fill: none !important;
}
.edgeLabel {
  background-color: var(--background-primary) !important;
  text-align: center !important;
}
.edgeLabel rect {
  opacity: 0 !important;
}
.cluster rect {
  fill: var(--background-primary-alt) !important;
  stroke: var(--text-faint) !important;
  stroke-width: 1px !important;
}
.cluster text {
  fill: var(--background-primary) !important;
}
div.mermaidTooltip {
  text-align: center !important;
  max-width: 200px !important;
  padding: 2px !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
  font-size: 10px !important;
  background: var(--background-secondary) !important;
  border: 1px solid var(--text-faint) !important;
  border-radius: 2px !important;
  pointer-events: none !important;
  z-index: 100 !important;
}

/* === Mermaid Sequence === */

.actor {
  stroke: var(--text-accent) !important;
  fill: var(--background-secondary-alt) !important;
}
text.actor > tspan {
  fill: var(--text-muted) !important;
  stroke: none !important;
}
.actor-line {
  stroke: var(--text-muted) !important;
}
.messageLine0 {
  stroke-width: 1.5 !important;
  stroke-dasharray: none !important;
  stroke: var(--text-muted) !important;
}
.messageLine1 {
  stroke-width: 1.5 !important;
  stroke-dasharray: 2, 2 !important;
  stroke: var(--text-muted) !important;
}
#arrowhead path {
  fill: var(--text-muted) !important;
  stroke: var(--text-muted) !important;
}
.sequenceNumber {
  fill: var(--background-primary) !important;
}
#sequencenumber {
  fill: var(--text-muted) !important;
}
#crosshead path {
  fill: var(--text-muted) !important;
  stroke: var(--text-muted) !important;
}
.messageText {
  fill: var(--text-muted) !important;
  stroke: var(--text-muted) !important;
}
.labelBox {
  stroke: var(--text-accent) !important;
  fill: var(--background-secondary-alt) !important;
}
.labelText,
.labelText > tspan {
  fill: var(--text-muted) !important;
  stroke: none !important;
}
.loopText,
.loopText > tspan {
  fill: var(--text-muted) !important;
  stroke: none !important;
}
.loopLine {
  stroke-width: 2px !important;
  stroke-dasharray: 2, 2 !important;
  stroke: var(--text-accent) !important;
  fill: var(--text-accent) !important;
}
.note {
  stroke: var(--text-normal) !important;
  fill: var(--text-accent) !important;
}
.noteText,
.noteText > tspan {
  fill: var(--background-secondary-alt) !important;
  stroke: none !important;
}

/* === Mermaid Gantt === */

.activation0 {
  fill: var(--background-secondary) !important;
  stroke: var(--text-accent) !important;
}
.activation1 {
  fill: var(--background-secondary) !important;
  stroke: var(--text-accent) !important;
}
.activation2 {
  fill: var(--background-secondary) !important;
  stroke: var(--text-accent) !important;
}
.mermaid span.nodeLabel {
  color: inherit !important;
}
.mermaid-main-font {
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
.section {
  stroke: none !important;
  opacity: 0.2 !important;
}
.section0 {
  fill: var(--text-faint) !important;
}
.section2 {
  fill: var(--text-accent) !important;
}
.section1,
.section3 {
  fill: var(--text-normal) !important;
  opacity: 0.2 !important;
}
.sectionTitle0,
.sectionTitle1,
.sectionTitle2,
.sectionTitle3 {
  fill: var(--text-normal) !important;
}
.sectionTitle {
  text-anchor: start !important;
  font-size: 9px !important;
  line-height: 14px !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
.grid .tick {
  stroke: var(--text-muted) !important;
  opacity: 0.2 !important;
  shape-rendering: crispEdges !important;
}
.grid .tick text {
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
.grid path {
  stroke-width: 0 !important;
}
.today {
  fill: none !important;
  stroke: var(--text-error) !important;
  stroke-width: 2px !important;
}

/* === Mermaid Tasks === */

.task {
  stroke-width: 0.5px !important;
}
.taskText {
  text-anchor: middle !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
.taskText:not([font-size]) {
  font-size: 9px !important;
}
.taskTextOutsideRight {
  fill: var(--text-normal) !important;
  text-anchor: start !important;
  font-size: 9px !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
.taskTextOutsideLeft {
  fill: var(--text-normal) !important;
  text-anchor: end !important;
  font-size: 9px !important;
}
.task.clickable {
  cursor: pointer !important;
}
.taskText.clickable {
  cursor: pointer !important;
  fill: var(--text-accent-hover) !important;
  font-weight: bold !important;
}
.taskTextOutsideLeft.clickable {
  cursor: pointer !important;
  fill: var(--text-accent-hover) !important;
  font-weight: bold !important;
}
.taskTextOutsideRight.clickable {
  cursor: pointer !important;
  fill: var(--text-accent-hover) !important;
  font-weight: bold !important;
}
.taskText0,
.taskText1,
.taskText2,
.taskText3 {
  fill: var(--text-normal) !important;
}
.task0,
.task1,
.task2,
.task3 {
  fill: var(--background-secondary-alt) !important;
  stroke: var(--text-muted) !important;
}
.taskTextOutside0,
.taskTextOutside2 {
  fill: var(--text-muted) !important;
}
.taskTextOutside1,
.taskTextOutside3 {
  fill: var(--text-muted) !important;
}

/* === Mermaid Active tasks === */

.active0,
.active1,
.active2,
.active3 {
  fill: var(--text-accent) !important;
  stroke: var(--text-muted) !important;
}
.activeText0,
.activeText1,
.activeText2,
.activeText3 {
  fill: var(--text-normal) !important;
}

/* === Mermaid Done tasks === */

.done0,
.done1,
.done2,
.done3 {
  stroke: var(--text-muted) !important;
  fill: var(--text-faint) !important;
  stroke-width: 1 !important;
}
.doneText0,
.doneText1,
.doneText2,
.doneText3 {
  fill: var(--text-normal) !important;
}

/* === Mermaid Critical tasks === */

.crit0,
.crit1,
.crit2,
.crit3 {
  stroke: var(--accent-strong) !important;
  fill: var(--accent-strong) !important;
  stroke-width: 1 !important;
}
.activeCrit0,
.activeCrit1,
.activeCrit2,
.activeCrit3 {
  stroke: var(--accent-strong) !important;
  fill: var(--text-accent) !important;
  stroke-width: 1 !important;
}
.doneCrit0,
.doneCrit1,
.doneCrit2,
.doneCrit3 {
  stroke: var(--accent-strong) !important;
  fill: var(--text-muted) !important;
  stroke-width: 0.5 !important;
  cursor: pointer !important;
  shape-rendering: crispEdges !important;
}
.milestone {
  transform: rotate(45deg) scale(0.8, 0.8) !important;
}
.milestoneText {
  font-style: italic !important;
}
.doneCritText0,
.doneCritText1,
.doneCritText2,
.doneCritText3 {
  fill: var(--text-normal) !important;
}
.activeCritText0,
.activeCritText1,
.activeCritText2,
.activeCritText3 {
  fill: var(--text-normal) !important;
}
.titleText {
  text-anchor: middle !important;
  font-size: 16px !important;
  fill: var(--text-normal) !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}

/* === Mermaid Class === */

g.classGroup text {
  fill: var(--text-accent) !important;
  stroke: none !important;
  font-family: consolas, monospace, Segoe UI, "trebuchet ms", verdana, arial !important;
  font-size: 8px !important;
}
g.classGroup text .title {
  font-weight: bolder !important;
}
g.clickable {
  cursor: pointer !important;
}
g.classGroup rect {
  fill: var(--background-secondary-alt) !important;
  stroke: var(--text-accent) !important;
}
g.classGroup line {
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
}
.classLabel .box {
  stroke: none !important;
  stroke-width: 0 !important;
  fill: var(--background-secondary-alt) !important;
  opacity: 0.2 !important;
}
.classLabel .label {
  fill: var(--text-accent) !important;
  font-size: 10px !important;
}
.relation {
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
  fill: none !important;
}
.dashed-line {
  stroke-dasharray: 3 !important;
}
#compositionStart,
#compositionEnd {
  fill: var(--text-accent) !important;
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
}
#aggregationStart,
#aggregationEnd {
  fill: var(--background-secondary-alt) !important;
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
}
#dependencyStart,
#dependencyEnd {
  fill: var(--text-accent) !important;
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
}
#extensionStart,
#extensionEnd {
  fill: var(--text-accent) !important;
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
}

/* === Mermaid Git === */

.commit-id,
.commit-msg,
.branch-label {
  fill: var(--text-muted) !important;
  color: var(--text-muted) !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}

/* === Mermaid Pie === */

.pieTitleText {
  text-anchor: middle !important;
  font-size: 18px !important;
  fill: var(--text-normal) !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
.slice {
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}

/* === Mermaid State === */

g.stateGroup text {
  fill: var(--text-accent) !important;
  stroke: none !important;
  font-size: 10px !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
g.stateGroup .state-title {
  font-weight: bolder !important;
  fill: var(--background-secondary-alt) !important;
}
g.stateGroup rect {
  fill: var(--background-secondary-alt) !important;
  stroke: var(--text-accent) !important;
}
g.stateGroup line {
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
}
.transition {
  stroke: var(--text-accent) !important;
  stroke-width: 1 !important;
  fill: none !important;
}
.stateGroup .composit {
  fill: var(--text-normal) !important;
  border-bottom: 1px !important;
}
.stateGroup .alt-composit {
  fill: #e0e0e0 !important;
  border-bottom: 1px !important;
}
.state-note {
  stroke: var(--text-faint) !important;
  fill: var(--text-accent) !important;
}
.state-note text {
  fill: black !important;
  stroke: none !important;
  font-size: 10px !important;
}
.stateLabel .box {
  stroke: none !important;
  stroke-width: 0 !important;
  fill: var(--background-secondary-alt) !important;
  opacity: 0.5 !important;
}
.stateLabel text {
  fill: black !important;
  font-size: 10px !important;
  font-weight: bold !important;
  font-family: Segoe UI, "trebuchet ms", verdana, arial !important;
}
.node circle.state-start {
  fill: black !important;
  stroke: black !important;
}
.node circle.state-end {
  fill: black !important;
  stroke: var(--text-normal) !important;
  stroke-width: 1.5 !important;
}
#statediagram-barbEnd {
  fill: var(--text-accent) !important;
}
.statediagram-cluster rect {
  fill: var(--background-secondary-alt) !important;
  stroke: var(--text-accent) !important;
  stroke-width: 1px !important;
}
.statediagram-cluster rect.outer {
  rx: 5px !important;
  ry: 5px !important;
}
.statediagram-state .divider {
  stroke: var(--text-accent) !important;
}
.statediagram-state .title-state {
  rx: 5px !important;
  ry: 5px !important;
}
.statediagram-cluster.statediagram-cluster .inner {
  fill: var(--text-normal) !important;
}
.statediagram-cluster.statediagram-cluster-alt .inner {
  fill: #e0e0e0 !important;
}
.statediagram-cluster .inner {
  rx: 0 !important;
  ry: 0 !important;
}
.statediagram-state rect.basic {
  rx: 5px !important;
  ry: 5px !important;
}
.statediagram-state rect.divider {
  stroke-dasharray: 10, 10 !important;
  fill: #efefef !important;
}
.note-edge {
  stroke-dasharray: 5 !important;
}
.statediagram-note rect {
  fill: var(--text-accent) !important;
  stroke: var(--text-muted) !important;
  stroke-width: 1px !important;
  rx: 0 !important;
  ry: 0 !important;
}
:root {
  --mermaid-font-family: "trebuchet ms", verdana, arial !important;
}

/* === Mermaid common === */

.error-icon {
  fill: var(--text-error) !important;
}
.error-text {
  fill: var(--text-muted) !important;
  stroke: var(--text-muted) !important;
}
.edge-thickness-normal {
  stroke-width: 1px !important;
}
.edge-thickness-thick {
  stroke-width: 3px !important;
}
.edge-pattern-solid {
  stroke-dasharray: 0 !important;
}
.edge-pattern-dashed {
  stroke-dasharray: 3 !important;
}
.edge-pattern-dotted {
  stroke-dasharray: 2 !important;
}
.marker {
  fill: var(--text-muted) !important;
}
.marker.cross {
  stroke: var(--text-muted) !important;
}
]],
    colors
  )

  return obsidian
end

return M
