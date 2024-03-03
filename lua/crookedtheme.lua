--:Telescope highlights
local config = require("crookedtheme.config")
print(config.test)

vim.api.nvim_set_hl(0, "@method", {fg = config.functionColor})
vim.api.nvim_set_hl(0, "@string", {fg = config.stringColor})
vim.api.nvim_set_hl(0, "@boolean", {fg = config.booleanColor})

function test()
    bool = true;
end



