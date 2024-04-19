# Crooked Themes

Crooked Theme is an easy way to configure your own color themes in neovim!

## Example Config
```
local crooked = require("crookedtheme")

local colorOne = "#FFF6F9"
local colorTwo = "#FFC8DD"
local colorThree = "#FFBCD5"
local colorFour = "#FF99BE"
local colorFive = "#FCF5DE"
local colorSix = "#FEF2CD"
local colorSeven = "#FFEFBC"
local colorEight = "#BDE0FE"
local colorNine = "#B0D9FF"
local colorTen = "#A2D2FF"

local config = crooked.Config

config.keywordColor = {fg = colorTen, bold = true}
config.stringColor = {fg = colorTwo, italic = true, underline = true}
config.fieldColor = {fg = colorSix, bold = false}
config.classColor = {fg = colorTwo, bold = true}
config.variableColor = {fg = colorTwo}
config.booleanColor = {fg = colorFour, bold = true, underline = true}
config.constantColor = {fg = colorSeven, underline = true}
config.functionColor = {fg = colorSeven, bold = true}
config.builtinFunctionColor = {bold = true, underline = true, italic = true}
config.attributeColor = {fg = colorFive}
config.conditionalColor = {fg = colorSix}
config.moduleColor = {fg = colorEight}
config.macroColor = {fg = colorNine, bold = true}
config.typeColor = {fg = colorTen, italic = true, bold = true}
config.textColor = {fg = colorThree}
config.operatorColor = {fg = colorOne}
config.specialTextColor = {fg = colorEight}
config.commentColor = {fg = colorFour}
config.commentWarningColor = {fg = "#000000", bg = colorSeven}
config.commentTodoColor = {fg = "#000000", bg = colorEight}
config.commentErrorColor = {fg = "#000000", bg = colorThree}
config.commentNoteColor = {fg = "#000000", bg = colorOne}
config.characterColor = {fg = colorFour, bold = true, underline = true}
config.netrwDirectoryColor = {fg = colorFour, bold = true, underline = true}
config.netrwPlainColor = {fg = colorFive}
config.symbolColor = {fg = colorNine}
config.normalColor = {bg = "#001529"}

crooked.Apply();
```

