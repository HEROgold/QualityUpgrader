
script.on_nth_tick(
    tickSetting,
    function ()
        upgradeSurfaces()
    end
)

function upgradeSurfaces()
    local surfaces = game.surfaces
    for i, surface in pairs(surfaces) do
        upgradeSurface(surface)
    end
end

function upgradeSurface(surface)
    local entities = surface.find_entities_filtered()
    for i, entity in pairs(entities) do
        upgradeEntity(entity)
    end
end

---@param entity LuaEntity
function upgradeEntity(entity)
    if entity.quality == nil then
        return
    end
    local quality = entity.quality
    local upgrade = quality.level + 1
    -- TODO: check if we can upgrade
    -- TODO: find out if entity is in a construction area.
    -- TODO: find it logistic network contains the upgradable items
end