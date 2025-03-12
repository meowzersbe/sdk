return {
    id = "arena_activator",
    name = "Arena Activator",
    author = "Your Name",
    description = "Auto-casts items with safety checks",
    shard = {"menu", "logic", "draw", "main"}, -- 4 files + header = 5 total
    hprotect = true,
    load = function() return true end
}