local crooked = require("crookedtheme.functions")
require("crookedtheme.commands")
require("crookedtheme.gui")

local noTheme = crooked.NewTheme();
noTheme.name = "None"
crooked.AddTheme(noTheme);

return crooked;
