--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
    local colors = {
        none = 'NONE',
        grey0 = hsl(28, 11, 44),
        grey1 = hsl(30, 12, 51),
        grey2 = hsl(35, 17, 59),
        bg0 = 	hsl(0, 0, 16),
        bg1 = hsl(20, 3, 19),
        bg3 = hsl(22, 6, 25),
        bg5 = hsl(26, 8, 33),
        fg = hsl(37, 50, 77),
        red = hsl(5,87,62),
        orange = hsl(26, 88, 58),
        yellow = hsl(40, 79, 59),
        green = hsl(64, 45, 50),
        aqua = hsl(108, 30, 61),
        blue = hsl(163, 20, 58),
        purple = hsl(344, 47, 68),
        bg_red = hsl(3, 68, 55),
        bg_green = hsl(64, 45, 50),
        bg_yellow = hsl(40, 79, 59),
        bg_diff_green    = 	hsl(68, 35, 16),
        bg_visual_green  = hsl(109, 9, 25),
        bg_diff_red     = hsl(2, 33, 19),
        bg_visual_red    = hsl(5, 21, 25),
        bg_diff_blue     = hsl(190, 63, 15),
        bg_visual_blue   = hsl(180, 8, 24),
        bg_visual_yellow = hsl(36, 26, 25),
        bg_current_word  = hsl(20, 5, 22),


    }
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Fg { fg = colors.fg },
    Grey { fg = colors.grey1 },
    Red { fg = colors.red },
    Orange { fg = colors.orange },
    Yellow { fg = colors.yellow },
    Green { fg = colors.green },
    Aqua { fg = colors.aqua },
    Blue { fg = colors.blue },
    Purple { fg = colors.purple },

    CurrentWord  { fg = colors.fg, bg = colors.bg_current_word},
    ErrorText  	 {Red, gui ='underline'},
    WarningText  {Yellow, gui = 'underline'},
    InfoText  {Blue, gui = 'underline'},
    HintText  {Green, gui = 'underline'},


    Comment      { fg = colors.grey1, gui ='italic' }, -- any comment
    ColorColumn  { bg = colors.bg2 }, -- used for the columns set with 'colorcolumn'
    Conceal      { bg = colors.bg5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       {}, -- character under the cursor
    lCursor      { gui = 'reverse' }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = colors.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = colors.bg3}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { Green }, -- directory names (and other special names in listings)
    DiffAdd      { bg = colors.bg_diff_green }, -- diff mode: Added line |diff.txt|
    DiffChange   { bg = colors.bg_diff_blue }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { bg = colors.bg_diff_red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = colors.bg0, bg = colors.blue }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = colors.bg5, bg = colors.bg1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { Red }, -- error messages on the command line
    VertSplit    { fg = colors.bg5 }, -- the column separating vertically split windows
    Folded       { fg = colors.grey1 }, -- line used for closed folds
    FoldColumn   { fg = colors.bg5 }, -- 'foldcolumn'
    SignColumn   { fg = colors.fg, bg =colors.bg2 }, -- column where |signs| are displayed
    IncSearch    { fg = colors.bg0, bg = colors.yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { fg = colors.bg5 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = colors.yellow}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = colors.orange, gui = 'bold' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      {  Yellow }, -- |more-prompt|
    NonText      { fg = colors.bg5 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = colors.fg }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = colors.fg, gb = colors.bg3 }, -- Popup menu: normal item.
    PmenuSel     { fg = colors.bg3, bg = colors.grey2}, -- Popup menu: selected item.
    PmenuSbar    { bg = colors.bg3 }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = colors.grey0}, -- Popup menu: Thumb of the scrollbar.
    Question     { Yellow }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = colors.bg0, bg = colors.green  }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { fg = colors.bg5 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = colors.fg, bg = colors.bg3}, -- status line of current window
    StatusLineNC { fg = colors.grey2, bg = colors.bg2 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { fg = colors.grey2, bg = '#3a3735'}, -- tab pages line, not active tab page label
    TabLineFill  { fg = colors.grey2, bg = colors.bg0 }, -- tab pages line, where there are no labels
    TabLineSel   { fg = colors.bg0, bg = colors.grey2  }, -- tab pages line, active tab page label
    Title        { Orange }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = colors.bg_visual_blue }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { Yellow }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { PmenuSel }, -- current match in 'wildmenu' completion
    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = colors.aqua }, -- (preferred) any constant
    String         { fg = colors.green }, --   a string constant: "this is a string"
    Character      { Green }, --  a character constant: 'c', '\n'
    Number         { Purple }, --   a number constant: 234, 0xff
    Boolean        { Purple }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    Identifier     { Blue }, -- (preferred) any variable name
    Function       { Green }, -- function name (also: methods for classes)

    Statement      { Red, gui = 'italic' }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { Purple, gui = 'italic' }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { Green }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { Yellow }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { Red }, -- (preferred) any erroneous construct

    Todo           { Purple }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText                     { CurrentWord }, -- used for highlighting "text" references
    LspReferenceRead                     { CurrentWord }, -- used for highlighting "read" references
    LspReferenceWrite                    { CurrentWord }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { ErrorText }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { WarningText }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { InfoText }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { HintText }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { ErrorText }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { WarningText }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { InfoText }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { Grey }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { ErrorText, gui = 'underline'}, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       {  WarningText, gui = 'underline'}, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   {  InfoText, gui = 'underline'}, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          {  HintText, gui = 'underline'}, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { Red } , -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { Yellow }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { Blue }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { Blue }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { Red }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { Yellow }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { Blue }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { Blue }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    TSAnnotation         { Purple };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute          { Purple };    -- (unstable) TODO: docs
    TSBoolean            { Purple };    -- For booleans.
    TSCharacter          { Aqua };    -- For characters.
    TSComment            { Comment };    -- For comment blocks.
    TSConstructor        { Yellow };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional        { Red };    -- For keywords related to conditionnals.
    TSConstant           { Fg };    -- For constants
    TSConstBuiltin       { Blue, gui = 'italic' };    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro         { Blue, gui = 'italic' };    -- For constants that are defined by macros: `NULL` in C.
    TSError              { Red, gui = 'underline' };    -- For syntax/parser errors.
    TSException          { Red };    -- For exception related keywords.
    TSField              { Green };    -- For fields.
    TSFloat              { Purple };    -- For floats.
    TSFunction           { Green };    -- For function (calls and definitions).
    TSFuncBuiltin        { Green };    -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro          { Green };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            { Red };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword            { Red };    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { Red };    -- For keywords used to define a fuction.
    TSLabel              { Orange };    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod             { Green };    -- For method calls and definitions.
    TSNamespace          { Yellow, gui = 'italic' };    -- For identifiers referring to modules and namespaces.
    TSNone               { Fg };    -- TODO: docs
    TSNumber             { Purple };    -- For all numbers
    TSOperator           { Orange };    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter          { Fg };    -- For parameters of a function.
    TSParameterReference { Fg };    -- For references to parameters of a function.
    TSProperty           { Green };    -- Same as `TSField`.
    TSPunctDelimiter     { Grey };    -- For delimiters ie: `.`
    TSPunctBracket       { Fg };    -- For brackets and parens.
    TSPunctSpecial       { Blue };    -- For special punctutation that does not fall in the catagories before.
    TSRepeat             { Red };    -- For keywords related to loops.
    TSString             { Aqua };    -- For strings.
    TSStringRegex        { Green };    -- For regexes.
    TSStringEscape       { Green };    -- For escape characters within a string.
    TSSymbol             { Fg };    -- For identifiers referring to symbols or atoms.
    TSType               { Yellow };    -- For types.
    TSTypeBuiltin        { Yellow, gui = 'italic' };    -- For builtin types.
    TSVariable           { Fg };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { Blue, gui = 'italic' };    -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag                { Orange };    -- Tags like html tag names.
    TSTagDelimiter       { Green };    -- Tag delimiter like `<` `>` `/`
    TSText               { Green };    -- For strings considered text in a markup language.
    TSEmphasis           { gui = 'bold' };    -- For text to be represented with emphasis.
    TSUnderline          { gui = 'underline'};    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    TSTitle              { Purple };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    TSURI                { Blue, gui ='underline' };    -- Any URI like a link or email.

    GitSignsAdd            { Green };
    GitSignsChange         { Blue };
    GitSignsDelete         { Red };
    GitSignsChangeDelete   { Purple };

    NvimTreeSymlink { Fg };
    NvimTreeFolderName { Green };
    NvimTreeRootFolder { Grey };
    NvimTreeFolderIcon { Red };
    NvimTreeEmptyFolderName { Green };
    NvimTreeOpenedFolderName { Green };
    NvimTreeExecFile { Fg };
    NvimTreeOpenedFile { Fg };
    NvimTreeSpecialFile { Fg };
    NvimTreeImageFile { Fg };
    NvimTreeMarkdownFile { Fg };
    NvimTreeIndentMarker { Grey };
    NvimTreeGitDirty { Yellow };
    NvimTreeGitStaged { Blue };
    NvimTreeGitMerge { Orange };
    NvimTreeGitRenamed { Purple };
    NvimTreeGitNew { Aqua };
    NvimTreeGitDeleted { Red };
    WindowPicker {fg = colors.fg, bg=colors.blue, gui ='bold'};

    TelescopeBorder { Grey };
    TelescopePromptPrefix { Orange };
    TelescopeSelection { Green };
    TelescopeSelectionCaret { Green };

  LightspeedLabel { Yellow };
  LightspeedShortcut {fg = '#000000', bg = colors.yellow};
  LightspeedOneCharMatch {fg = '#000000', bg = colors.yellow};
  LightspeedMaskedChar { Purple };

  NeogitDiffAddHighlight {DiffAdd};
  NeogitDiffDeleteHighlight {DiffDelete};
  NeogitDiffContextHighlight { bg = colors.bg3 };
  NeogitHunkHeader {Blue};
  NeogitHunkHeaderHighlight {Blue};


  YankHighlight {Visual};



  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
