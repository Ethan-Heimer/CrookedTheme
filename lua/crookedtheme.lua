--:Telescope highlights
local config = require("crookedtheme.config")
print(config.test)

vim.api.nvim_set_hl(0, "@function", {fg = config.functionColor})
vim.api.nvim_set_hl(0, "@method", {fg = config.functionColor})
vim.api.nvim_set_hl(0, "@string", {fg = config.stringColor})
vim.api.nvim_set_hl(0, "@boolean", {fg = config.booleanColor})
vim.api.nvim_set_hl(0, "@attribute.diff", {fg = config.attributeColor})
vim.api.nvim_set_hl(0, "@class", {fg = config.classColor})
vim.api.nvim_set_hl(0, "@conditional", {fg = config.conditionalColor})
vim.api.nvim_set_hl(0, "@field", {fg = config.fieldColor})
vim.api.nvim_set_hl(0, "@include", {fg = config.moduleColor})
vim.api.nvim_set_hl(0, "@type", {fg = config.typeColor})
vim.api.nvim_set_hl(0, "@macro", {fg = config.macroColor})
vim.api.nvim_set_hl(0, "@property", {fg = config.fieldColor})
vim.api.nvim_set_hl(0, "@text", {fg = config.textColor})

vim.api.nvim_set_hl(0, "@keyword", {fg = config.keywordColor})

function test()
    bool = true;
end



