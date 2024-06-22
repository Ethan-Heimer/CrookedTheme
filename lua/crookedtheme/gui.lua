local crooked = require("crookedtheme.functions")

function ShowGUI()
    local themes = crooked.GetThemes()

    vim.ui.select(themes, {
        prompt = 'Select Theme:',
        format_item = function(item)
			return item
        end,
     }, function(choice)
         local theme = crooked.GetTheme(choice)
         crooked.Apply(theme)
     end
    )
end

return {ShowGUI = ShowGUI}
