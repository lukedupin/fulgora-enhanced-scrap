data:extend({
    {
        type = "recipe",
        name = "enhanced-scrap-processing",
        categories = {"electromagnetics"}, -- Can only be made in electromagnetic plants
        subgroup = "other",
        order = "a[enhanced-scrap]",
        icon = "__space-age__/graphics/icons/scrap.png",
        icon_size = 64,
        enabled = false,
        ingredients = {
            {type = "fluid", name = "sludge", amount = 20},
            {type = "item", name = "scrap", amount = 1}
        },
        results = {
            {type = "item", name = "enhanced-scrap", amount = 1}
        },
        energy_required = 0.2,
        allow_productivity = true
    }
})

local enhanced = table.deepcopy(data.raw.recipe['scrap-recycling'])
enhanced.name = "recycling-enhanced-scrap"
enhanced.ingredients = {{type="item", name="enhanced-scrap", amount=1}}
enhanced.results = {
    {type = "item", name = "iron-gear-wheel", amount = 1, independent_probability = 0.2},
    {type = "item", name = "concrete", amount = 1, independent_probability = 0.06},
    {type = "item", name = "steel-plate", amount = 1, independent_probability = 0.08},
    {type = "item", name = "battery", amount = 1, independent_probability = 0.12},
    {type = "item", name = "advanced-circuit", amount = 1, independent_probability = 0.03},
    {type = "item", name = "processing-unit", amount = 1, independent_probability = 0.06},
    {type = "item", name = "low-density-structure", amount = 1, independent_probability = 0.05},
    {type = "item", name = "holmium-ore", amount = 1, independent_probability = 0.05},
    {type = "item", name = "stone", amount = 1, independent_probability = 0.12}
}

-- Add recycling recipe for ice to create stone
data:extend({ enhanced })
