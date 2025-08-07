-- Modify Fulgora ocean to use sludge
data.raw["tile"]["oil-ocean-shallow"].fluid = "sludge"
data.raw["tile"]["oil-ocean-deep"].fluid = "sludge"

-- Modify existing scrape recycling to produce 20x less output
if data.raw.recipe["recycling-scrap"] then
    local recipe = data.raw.recipe["recycling-scrap"]
    if recipe.results then
        for _, result in pairs(recipe.results) do
            if result.amount then
                result.amount = 20 --math.max(1, math.floor(result.amount / 20))
            end
            if result.amount_min then
                result.amount_min = 20 --math.max(1, math.floor(result.amount_min / 20))
            end
            if result.amount_max then
                result.amount_max = 20 --math.max(1, math.floor(result.amount_max / 20))
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
        icon = "__quality__/graphics/icons/recycling.png",
        icon_size = 64,
        enabled = false,
        ingredients = {{type="item", name="ice", amount=1}},
        results = {
            {type = "item", name = "stone", amount = 1, probability = 0.1}
        },
        energy_required = 0.2,
        allow_productivity = true,
        unlock_results = false,
        hidden = true
    }
})
