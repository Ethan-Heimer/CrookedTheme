local crooked = require("crookedtheme.functions")

function ShowGUI()
    local themes = crooked.GetThemes()

    vim.ui.select(themes, {
        prompt = 'Select Theme:',
        format_item = function(item)
			return item
        end,
     }, function(choice)
         crooked.Apply(choice)
     end
    )
end

return ShowGUI
