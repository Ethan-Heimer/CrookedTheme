--:Telescope highlights
local Themes = {}

function NewTheme()
    local config = {}
    local base = {}
    local editor = {}

    config.name = "New Theme"
    config.description = "New Crooked Theme"

    base.number = {fg = "#FFFFFF"}
    base.string = {fg = "#FFFFFF"}
    base.type = {fg = "#FFFFFF"}
    base.method = {fg = "#FFFFFF"}
    base.identifier = {fg = "#FFFFFF"}
    base.statement = {fg = "#FFFFFF"}
    base.comment = {fg = "#FFFFFF"}
    base.constant = {fg = "#FFFFFF"}
    base.preproc = {fg = "#FFFFFF"}
    base.symbol = {fg = "#FFFFFF"}

    editor.lineNumber = {fg = "#FFFFFF"}
    editor.colorColumn = {fg = "#FFFFFF"}
    editor.background = {bg = "#000000"}
    editor.cursorColumn = {bg = "#000000"}

    config.base = base;
    config.editor = editor;

    --[[
    config.attributeColor = {fg = "#FFFFFF"}
    config.booleanColor = {fg = "#FFFFFF"}
    config.functionColor = {fg = "#FFFFFF"}
    config.stringColor = {fg = "#FFFFFF"}
    config.classColor = {fg = "#FFFFFF"}
    config.conditionalColor = {fg = "#FFFFFF"}
    config.fieldColor = {fg = "#FFFFFF"}
    config.moduleColor = {fg = "#FFFFFF"}
    config.macroColor = {fg = "#FFFFFF"}
    config.typeColor = {fg = "#FFFFFF"}
    config.textColor = {fg = "#FFFFFF"}
    config.keywordColor = {fg = "#FFFFFF"}
    config.builtinFunctionColor = {fg = "#FFFFFF"}
    config.operatorColor = {fg = "#FFFFFF"}
    config.variableColor = {fg = "#FFFFFF"}
    config.specialTextColor = {fg = "#FFFFFF"}
    config.commentColor = {fg = "#FFFFFF"}
    config.commentWarningColor = {fg = "#FFFFFF"}
    config.commentTodoColor = {fg = "#FFFFFF"}
    config.commentErrorColor = {fg = "#FFFFFF"}
    config.commentNoteColor = {fg = "#FFFFFF"}
    config.characterColor = {fg = "#FFFFFF"}
    config.constantColor = {fg = "#FFFFFF"}
    config.netrwDirectoryColor = {fg = "#FFFFFF"}
    config.netrwPlainColor = {fg = "#FFFFFF"}
    config.symbolColor = {fg = "#FFFFFF"}
    config.normalColor = {bg = "#000000"}

    config.columnLineColor = {bg = "#000000"}
    config.lineNumber = {fg = "#FFFFFF"}
    config.nonText = {fg = "#FFFFFF"}
    config.menuColor = {bg = "#FFFFFF", fg = "#000000"}
    config.menuTextColor = {fg = "#000000"}
    config.cursorColumn = {bg = "#000000"}
    config.titleColor = {fg = "#FFFFFF"}
    config.searchColor = {bg = "#FFFFFF", fg = "#000000"}
    ]]

    return config
end

function AddTheme(theme)
    Themes[theme.name] = theme;
end

function GetTheme(name)
    return Themes[name]
end

function GetThemes()
    local names = {};

    local i = 0;
    for k,_ in pairs(Themes) do
        i = i + 1
        names[i] = k
    end

    return names;
end

function Apply(theme)
    print("Apply");

    vim.api.nvim_set_hl(0, "Number", theme.base.number);
    vim.api.nvim_set_hl(0, "String", theme.base.string)
    vim.api.nvim_set_hl(0, "Type", theme.base.type)
    vim.api.nvim_set_hl(0, "Function", theme.base.method)
    vim.api.nvim_set_hl(0, "Identifier", theme.base.identifier)
    vim.api.nvim_set_hl(0, "Statement", theme.base.statement)
    vim.api.nvim_set_hl(0, "Comment", theme.base.comment)
    vim.api.nvim_set_hl(0, "Constant", theme.base.constant)
    vim.api.nvim_set_hl(0, "PreProc", theme.base.preproc)
    vim.api.nvim_set_hl(0, "Special", theme.base.symbol)

    vim.api.nvim_set_hl(0, "LineNr", theme.editor.lineNumber)
    vim.api.nvim_set_hl(0, "ColorColumn", theme.editor.colorColumn)
    vim.api.nvim_set_hl(0, "Normal", theme.editor.background)

    vim.api.nvim_set_hl(0, "CursorColumn", theme.editor.cursorColumn)
    --vim.api.nvim_set_hl(0, "CursorLine", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "FoldColumn", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "SignColumn", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "Conceal", {link = "Cursorcolumn"})



    --[[
    vim.api.nvim_set_hl(0, "Function", theme.functionColor)
    vim.api.nvim_set_hl(0, "@function", {link = "Function"})
    vim.api.nvim_set_hl(0, "@function.method", {link = "Function"})
    vim.api.nvim_set_hl(0, "@method", {link = "Function"})
    vim.api.nvim_set_hl(0, "@function.builtin", theme.builtinFunctionColor)
    vim.api.nvim_set_hl(0, "CmpItemKindFunctionDefault", {link = "Function"})
    vim.api.nvim_set_hl(0, "CmpItemKindMethodDefault", {link = "Function"})

    vim.api.nvim_set_hl(0, "Type", theme.typeColor)
    vim.api.nvim_set_hl(0, "@type", {link = "Type"})
    vim.api.nvim_set_hl(0, "CmpItemKindTypeParameterDefault", {link = "Type"})

    vim.api.nvim_set_hl(0, "@string", theme.stringColor)
    vim.api.nvim_set_hl(0, "CmpItemKindStringDefault", {link = "@string"})

    vim.api.nvim_set_hl(0, "@boolean", theme.booleanColor)
    vim.api.nvim_set_hl(0, "@attribute.diff", theme.attributeColor)

    vim.api.nvim_set_hl(0, "@class", theme.classColor)
    vim.api.nvim_set_hl(0, "CmpItemKindClassDefault", {link = "@class"})

    vim.api.nvim_set_hl(0, "@conditional", theme.conditionalColor)
    vim.api.nvim_set_hl(0, "@field", theme.fieldColor)
    vim.api.nvim_set_hl(0, "@property", theme.fieldColor)
    vim.api.nvim_set_hl(0, "Constant", theme.constantColor)

    vim.api.nvim_set_hl(0, "Text", theme.textColor)
    vim.api.nvim_set_hl(0, "@text", {link = "Text"})
    vim.api.nvim_set_hl(0, "Identifier", {link = "Text"})
    vim.api.nvim_set_hl(0, "CmpItemKindTextDefault", {link = "Text"})

    vim.api.nvim_set_hl(0, "Special", theme.specialTextColor)
    vim.api.nvim_set_hl(0, "@text.uri", {link = "Special"})
    vim.api.nvim_set_hl(0, "@text.title", {link = "Special"})

    vim.api.nvim_set_hl(0, "Comment", theme.commentColor)
    vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
    vim.api.nvim_set_hl(0, "@comment.warning", theme.commentWarningColor)
    vim.api.nvim_set_hl(0, "@comment.error", theme.commentErrorColor)
    vim.api.nvim_set_hl(0, "@comment.todo", theme.commentTodoColor)
    vim.api.nvim_set_hl(0, "@comment.note", theme.commentNoteColor)

    vim.api.nvim_set_hl(0, "@character", {link = "Constant"})

    vim.api.nvim_set_hl(0, "Statement", theme.keywordColor)
    vim.api.nvim_set_hl(0, "@keyword", {link = "Keyword"})
    vim.api.nvim_set_hl(0, "@keyword.return", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.repeat", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.return", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.storage", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.debug", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.exception", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.directive", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.conditional", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", {link = "@keyword"})

    vim.api.nvim_set_hl(0, "Operator", theme.operatorColor)
    vim.api.nvim_set_hl(0, "@operator", {link = "Operator"})
    vim.api.nvim_set_hl(0, "@keyword.operator", {link = "@operator"})

    vim.api.nvim_set_hl(0, "PreProc", theme.macroColor)

    vim.api.nvim_set_hl(0, "@include", theme.moduleColor)
    vim.api.nvim_set_hl(0, "@keyword.import", {link = "@include"})

    vim.api.nvim_set_hl(0, "@variable", theme.variableColor) 
    vim.api.nvim_set_hl(0, "CmpItemKindVariableDefault", {link = "@variable"})

    vim.api.nvim_set_hl(0, "netrwDir", theme.netrwDirectoryColor)
    vim.api.nvim_set_hl(0, "netrwPlain", theme.netrwPlainColor)
    vim.api.nvim_set_hl(0, "Delimiter", theme.symbolColor)

    vim.api.nvim_set_hl(0, "Normal", theme.normalColor)

    vim.api.nvim_set_hl(0, "ColorColumn", theme.columnLineColor)
    vim.api.nvim_set_hl(0, "LineNr", theme.lineNumber)
    vim.api.nvim_set_hl(0, "NonText", theme.nonText)
    vim.api.nvim_set_hl(0, "Pmenu", theme.menuColor)
    vim.api.nvim_set_hl(0, "CmpItemAbbrDefault", theme.menuTextColor)

    vim.api.nvim_set_hl(0, "CursorColumn", theme.cursorColumn)
    vim.api.nvim_set_hl(0, "CursorLine", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "FoldColumn", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "SignColumn", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "Conceal", {link = "Cursorcolumn"})

    vim.api.nvim_set_hl(0, "Title", theme.titleColor)

    vim.api.nvim_set_hl(0, "Search", theme.searchColor)
    ]]
end

return {
    Apply = Apply,
    NewTheme = NewTheme,
    AddTheme = AddTheme,
    GetTheme = GetTheme,
    GetThemes = GetThemes
}
