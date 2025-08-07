-- Modify Fulgora ocean to use sludge
if data.raw.planet and data.raw.planet.fulgora then
    data.raw.planet.fulgora.surface_properties = data.raw.planet.fulgora.surface_properties or {}
    data.raw.planet.fulgora.surface_properties.ocean = "sludge"
end

-- Modify existing scrape recycling to produce 20x less output
if data.raw.recipe["recycling-scrap"] then
    local recipe = data.raw.recipe["recycling-scrap"]
    if recipe.results then
        for _, result in pairs(recipe.results) do
            if result.amount then
                result.amount = math.max(1, math.floor(result.amount / 20))
            end
            if result.amount_min then
                result.amount_min = math.max(1, math.floor(result.amount_min / 20))
            end
            if result.amount_max then
                result.amount_max = math.max(1, math.floor(result.amount_max / 20))
            end
        end
    end
end

-- Add recycling recipe for ice to create stone
data:extend({
    {
        type = "recipe",
        name = "recycling-ice-enhanced",
        category = "recycling",
        subgroup = "other",
        order = "z[recycling]-a[ice]",
        icon = "__base__/graphics/icons/recycling.png",
        icon_size = 64,
        enabled = false,
        ingredients = {{"ice", 1}},
        results = {
            {type = "item", name = "stone", amount = 1, probability = 0.1}
        },
        energy_required = 0.2,
        allow_productivity = true,
        unlock_results = false,
        hidden = true
    }
})