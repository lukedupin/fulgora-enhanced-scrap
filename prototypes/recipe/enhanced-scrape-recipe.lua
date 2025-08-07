data:extend({
    {
        type = "recipe",
        name = "enhanced-scrap-processing",
        category = "electromagnetics", -- Can only be made in electromagnetic plants
        subgroup = "other",
        order = "a[enhanced-scrap]",
        icon = "__space-age__/graphics/icons/scrap.png",
        icon_size = 64,
        enabled = false,
        ingredients = {
            {type = "fluid", name = "sludge", amount = 100},
            {type = "item", name = "scrap", amount = 1}
        },
        results = {
            {type = "item", name = "enhanced-scrap", amount = 1}
        },
        energy_required = 1.0,
        allow_productivity = true
    }
})

-- Enhanced scrap recycling recipe
data:extend({
    {
        type = "recipe",
        name = "recycling-enhanced-scrap",
        category = "recycling",
        subgroup = "other",
        order = "z[recycling]-b[enhanced-scrap]",
        icon = "__quality__/graphics/icons/recycler.png",
        icon_size = 64,
        enabled = false,
        ingredients = {{type="item", name="enhanced-scrap", amount=1}},
        results = {
            {type = "item", name = "processing-unit", amount = 1, probability = 0.06},
            {type = "item", name = "advanced-circuit", amount = 1, probability = 0.03},
            {type = "item", name = "low-density-structure", amount = 1, probability = 0.05},
            {type = "item", name = "battery", amount = 1, probability = 0.08},
            {type = "item", name = "steel-plate", amount = 1, probability = 0.04},
            {type = "item", name = "concrete", amount = 8, probability = 0.06},
            {type = "item", name = "holmium-ore", amount = 1, probability = 0.05}
        },
        energy_required = 0.2,
        allow_productivity = true,
        unlock_results = false,
        hidden = true
    }
})
