--:Telescope highlights
local config = require("crookedtheme.config")
print(config.test)

vim.api.nvim_set_hl(0, "@function", {fg = config.functionColor, bold = true})
vim.api.nvim_set_hl(0, "@function.method", {link = "@function"})
vim.api.nvim_set_hl(0, "@method", {link = "@function"})
vim.api.nvim_set_hl(0, "@function.builtin", {fg = config.builtinFunctionColor, bold = true})

vim.api.nvim_set_hl(0, "@string", {fg = config.stringColor})
vim.api.nvim_set_hl(0, "@boolean", {fg = config.booleanColor, bold = true})
vim.api.nvim_set_hl(0, "@attribute.diff", {fg = config.attributeColor})
vim.api.nvim_set_hl(0, "@class", {fg = config.classColor})
vim.api.nvim_set_hl(0, "@conditional", {fg = config.conditionalColor})
vim.api.nvim_set_hl(0, "@field", {fg = config.fieldColor})
vim.api.nvim_set_hl(0, "@include", {fg = config.moduleColor})
vim.api.nvim_set_hl(0, "@type", {fg = config.typeColor})
vim.api.nvim_set_hl(0, "@macro", {fg = config.macroColor})
vim.api.nvim_set_hl(0, "@property", {fg = config.fieldColor})

vim.api.nvim_set_hl(0, "@text", {fg = config.textColor})
vim.api.nvim_set_hl(0, "Identifier", {link = "@text"})
vim.api.nvim_set_hl(0, "@text.uri", {fg = config.specialTextColor})
vim.api.nvim_set_hl(0, "Special", {fg = config.specialTextColor})
vim.api.nvim_set_hl(0, "@text.title", {fg = config.specialTextColor, bold = true})

vim.api.nvim_set_hl(0, "@comment", {fg = config.commentColor})
vim.api.nvim_set_hl(0, "@comment.warning", {fg = config.commentWarningColor})
vim.api.nvim_set_hl(0, "@comment.error", {fg = config.commentErrorColor})
vim.api.nvim_set_hl(0, "@comment.todo", {fg = config.commentTodoColor})
vim.api.nvim_set_hl(0, "@comment.note", {fg = config.commentNoteColor})

vim.api.nvim_set_hl(0, "@character", {fg = config.characterColor})

vim.api.nvim_set_hl(0, "@keyword", {fg = config.keywordColor, bold = true, italic = true})
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

vim.api.nvim_set_hl(0, "@operator", {fg = config.operatorColor})
vim.api.nvim_set_hl(0, "@keyword.operator", {link = "@operator"})

vim.api.nvim_set_hl(0, "@variable", {fg = config.variableColor})



function test()
    bool = true;

    a = 10
    b = 10

    c = a + b;
end
