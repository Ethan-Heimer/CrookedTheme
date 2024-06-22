local crooked = require("crookedtheme.functions")
require("crookedtheme.gui")
require("crookedtheme.commands")

local noTheme = crooked.NewTheme();
noTheme.name = "None"
crooked.AddTheme(noTheme);

return crooked;
