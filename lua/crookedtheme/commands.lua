local crooked = require("crookedtheme.init")

vim.api.nvim_create_user_command("Theme", 
    function(opts)
        crooked.Apply(opts.args)
    end,
    {nargs='?'}
)

vim.api.nvim_create_user_command("ListThemes", 
    function (opts)
        for k,v in pairs(crooked.GetThemes()) do
            print(k)
        end
    end,
    {}
)
