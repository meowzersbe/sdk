local Menu = require("menu")
local player = objManager.player

local Logic = {}

function Logic.is_ready(id)
    if not player.isValid or player.isDead then return false end
    return player:spellSlot(id).state == 0
end

function Logic.cast(id)
    if Logic.is_ready(id) then
        player:castSpell("self", player:spellSlot(id))
    end
end

function Logic.use_items()
    if not Menu.main.enable:get() then return end
    
    for _, id in ipairs(Menu.Items) do
        local cfg = Menu.main[tostring(id)]
        if cfg.enable:get() then
            Logic.cast(id)
        end
    end
end

return Logic
