local crooked = require("crookedtheme.functions")
require("crookedtheme.commands")

local noTheme = crooked.NewTheme();
noTheme.name = "None"
crooked.AddTheme(noTheme);

return crooked;
