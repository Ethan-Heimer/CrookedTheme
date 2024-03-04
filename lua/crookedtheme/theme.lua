--:Telescope highlights
local config = require("config")

function Apply()
    vim.api.nvim_set_hl(0, "Function", config.functionColor)
    vim.api.nvim_set_hl(0, "@function", {link = "Function"})
    vim.api.nvim_set_hl(0, "@function.method", {link = "Function"})
    vim.api.nvim_set_hl(0, "@method", {link = "Function"})
    vim.api.nvim_set_hl(0, "@function.builtin", config.builtinFunctionColor)

    vim.api.nvim_set_hl(0, "Type", config.typeColor)
    vim.api.nvim_set_hl(0, "@type", {link = "Type"})

    vim.api.nvim_set_hl(0, "@string", config.stringColor)
    vim.api.nvim_set_hl(0, "@boolean", config.booleanColor)
    vim.api.nvim_set_hl(0, "@attribute.diff", config.attributeColor)
    vim.api.nvim_set_hl(0, "@class", config.classColor)
    vim.api.nvim_set_hl(0, "@conditional", config.conditionalColor)
    vim.api.nvim_set_hl(0, "@field", config.fieldColor)
    vim.api.nvim_set_hl(0, "@include", config.moduleColor)
    vim.api.nvim_set_hl(0, "@property", config.fieldColor)
    vim.api.nvim_set_hl(0, "Constant", config.constantColor)

    vim.api.nvim_set_hl(0, "Text", config.textColor)
    vim.api.nvim_set_hl(0, "@text", {link = "Text"})
    vim.api.nvim_set_hl(0, "Identifier", {link = "Text"})

    vim.api.nvim_set_hl(0, "Special", config.specialTextColor)
    vim.api.nvim_set_hl(0, "@text.uri", {link = "Special"})
    vim.api.nvim_set_hl(0, "@text.title", {link = "Special"})

    vim.api.nvim_set_hl(0, "Comment", config.commentColor)
    vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
    vim.api.nvim_set_hl(0, "@comment.warning", config.commentWarningColor)
    vim.api.nvim_set_hl(0, "@comment.error", config.commentErrorColor)
    vim.api.nvim_set_hl(0, "@comment.todo", config.commentTodoColor)
    vim.api.nvim_set_hl(0, "@comment.note", config.commentNoteColor)

    vim.api.nvim_set_hl(0, "@character", {link = "Constant"})

    vim.api.nvim_set_hl(0, "Statement", config.keywordColor)
    vim.api.nvim_set_hl(0, "@keyword", {link = "Keyword"})
    vim.api.nvim_set_hl(0, "@keyword.return", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.import", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.repeat", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.return", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.storage", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.debug", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.exception", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.directive", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.conditional", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", {link = "@keyword"})
    vim.api.nvim_set_hl(0, "@keyword.directive.define", {link = "@operator"})

    vim.api.nvim_set_hl(0, "Operator", config.operatorColor)
    vim.api.nvim_set_hl(0, "@operator", {link = "Operator"})
    vim.api.nvim_set_hl(0, "@keyword.operator", {link = "@operator"})

    vim.api.nvim_set_hl(0, "@variable", config.variableColor)
    vim.api.nvim_set_hl(0, "PreProc", config.macroColor)

    vim.api.nvim_set_hl(0, "netrwDir", config.netrwDirectoryColor)
    vim.api.nvim_set_hl(0, "netrwPlain", config.netrwPlainColor)
    vim.api.nvim_set_hl(0, "Delimiter", config.symbolColor)

    vim.api.nvim_set_hl(0, "Normal", config.normalColor)
end

return {
    Apply = Apply
}
