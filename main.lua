local module = module.internal("arena_activator")
local Logic = require("logic")
local Draw = require("draw")

function module.load()
    cb.add(cb.tick, Logic.use_items)
    cb.add(cb.draw, Draw.OnDraw)
end

return module
