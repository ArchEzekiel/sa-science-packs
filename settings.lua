if mods["space-age"] then
    data:extend({
    -- STARTUP SETTINGS
    {
        type = "bool-setting",
        name = "sasp-nostalgia-mode",
        setting_type = "startup",
        default_value = false
    }
    })
end