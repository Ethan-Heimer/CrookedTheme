--:Telescope highlights
local Themes = {}

function NewTheme()
    local config = {}

    local base = {}
    local editor = {}
    local netrw = {}
    local keyword = {}

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
    base.boolean = {fg = "#FFFFFF"}

    editor.lineNumber = {fg = "#FFFFFF"}
    editor.colorColumn = {fg = "#FFFFFF"}
    editor.background = {bg = "#000000"}
    editor.cursorColumn = {bg = "#000000"}
    editor.indentLine = {fg = "#FFFFFF"}
    editor.indentScope = {fg = "#FFFFFF"}
    editor.error = {fg = "#FFFFFF"}
    editor.warning = {fg = "#FFFFFF"}
    editor.menu = {bg = "#000000"}
    editor.title = {fg = "#FFFFFF"}
    editor.search = {fg = "#FFFFFF"}
    editor.nontext = {fg = "#FFFFFF"}

    netrw.dir = {fg = "#FFFFFF"}
    netrw.exe = {fg = "#FFFFFF"}
    netrw.symlink = {fg = "#FFFFFF"}
    netrw.version = {fg = "#FFFFFF"}
    netrw.gray = {fg = "#FFFFFF"}
    netrw.comment = {fg = "#FFFFFF"}
    netrw.base = {fg = "#FFFFFF"}
    netrw.time = {fg = "#FFFFFF"}
    netrw.date = {fg = "#FFFFFF"}
    netrw.change = {fg = "#FFFFFF"}
    netrw.cursorLine = {fg = "#FFFFFF"}

    keyword.method = nil;
    keyword.modifier = nil;

    config.base = base;
    config.editor = editor;
    config.netrw = netrw;
    config.keyword = keyword;

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

    --Base Themes
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
    vim.api.nvim_set_hl(0, "Boolean", theme.base.boolean)

    --Editor Themes
    vim.api.nvim_set_hl(0, "LineNr", theme.editor.lineNumber)
    vim.api.nvim_set_hl(0, "ColorColumn", theme.editor.colorColumn)
    vim.api.nvim_set_hl(0, "Normal", theme.editor.background)
    vim.api.nvim_set_hl(0, "CursorColumn", theme.editor.cursorColumn)
    vim.api.nvim_set_hl(0, "FoldColumn", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "SignColumn", {link = "CursorColumn"})
    vim.api.nvim_set_hl(0, "Conceal", {link = "Cursorcolumn"})
    vim.api.nvim_set_hl(0, "IndentLine", theme.editor.indentLine);
    vim.api.nvim_set_hl(0, "IblIndent", {link = "IndentLine"})
    vim.api.nvim_set_hl(0, "IblWhitespace", {link = "IndentLine"})
    vim.api.nvim_set_hl(0, "IblScope", theme.editor.indentScope)
    vim.api.nvim_set_hl(0, "DiagnosticError", theme.editor.error)
    vim.api.nvim_set_hl(0, "DiagnosticWarn", theme.editor.warning)    
    vim.api.nvim_set_hl(0, "Pmenu", theme.editor.menu)
    vim.api.nvim_set_hl(0, "Title", theme.editor.title)
    vim.api.nvim_set_hl(0, "Search", theme.editor.search)
    vim.api.nvim_set_hl(0, "NonText", theme.editor.nontext)

    --netrw
    vim.api.nvim_set_hl(0, "CursorLine", theme.netrw.cursorLine)
    vim.api.nvim_set_hl(0, "netrwDir", theme.netrw.dir)
    vim.api.nvim_set_hl(0, "netrwExe", theme.netrw.exe)
    vim.api.nvim_set_hl(0, "netrwSymLink", theme.netrw.symlink)
    vim.api.nvim_set_hl(0, "netrwVersion", theme.netrw.version)
    vim.api.nvim_set_hl(0, "netrwGray", theme.netrw.gray)
    vim.api.nvim_set_hl(0, "netrwComment", theme.netrw.comment)
    vim.api.nvim_set_hl(0, "netrwPlain", theme.netrw.base)
    vim.api.nvim_set_hl(0, "netrwDateSep", theme.netrw.date)
    vim.api.nvim_set_hl(0, "netrwTimeSep", theme.netrw.time)
    vim.api.nvim_set_hl(0, "DiffChange", theme.netrw.change)

    --Keywords
    if(theme.keyword.method ~= nil) then
        vim.api.nvim_set_hl(0, "@keyword.function", theme.keyword.method)
    end

    if(theme.keyword.modifier ~= nil) then
        vim.api.nvim_set_hl(0, "@keyword.modifier", theme.keyword.modifier)
    end
end

return {
    Apply = Apply,
    NewTheme = NewTheme,
    AddTheme = AddTheme,
    GetTheme = GetTheme,
    GetThemes = GetThemes
}
