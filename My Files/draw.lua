local Menu = require("menu")
local player = objManager.player

function OnDraw()
    if not player.isValid or player.isDead then return end

    for _, id in ipairs(Menu.Items) do
        local cfg = Menu.main[tostring(id)]
        local item = Menu.ITEM_DB[id]
        if cfg.draw:get() then
            graphics.draw_circle(player.pos, item.range, 2, cfg.color:get())
        end
    end
end

return {OnDraw = OnDraw}
