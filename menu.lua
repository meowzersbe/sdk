local Menu = menu("arena_activator", "Arena Activator")

-- Item database and IDs merged here
Menu.Items = {
    226630,  -- Goredrinker
    446671,  -- Galeforce
    446693   -- Prowler's Claw
}

Menu.ITEM_DB = {
    [226630] = {name = "Goredrinker", range = 400},
    [446671] = {name = "Galeforce", range = 700},
    [446693] = {name = "Prowler's Claw", range = 500}
}

-- Menu UI
Menu:header("global", "Global Settings")
Menu:toggle("enable", "Enable Script", true)

for _, id in ipairs(Menu.Items) do
    local item = Menu.ITEM_DB[id]
    local sub = Menu:menu(tostring(id), item.name)
    sub:toggle("enable", "Auto-Cast", true)
    sub:keybind("key", "Hotkey", id == 226630 and "Space" or "None")
    sub:toggle("draw", "Show Range", true)
    sub:color("color", "Range Color", graphics.argb(255, 255, 0, 0))
end

return {
    main = Menu,
    Items = Menu.Items,  -- Share with other files
    ITEM_DB = Menu.ITEM_DB
}
