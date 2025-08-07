data:extend({
    {
        type = "recipe",
        name = "icy-tarball",
        category = "chemistry",
        subgroup = "intermediate-product",
        order = "g[icy-tarball]",
        icon = "__base__/graphics/icons/coal.png",
        icon_size = 64,
        enabled = false,
        ingredients = {
            {type = "fluid", name = "sludge", amount = 100},
            {type = "item", name = "scrap", amount = 1}
        },
        results = {
            {type = "item", name = "icy-tarball", amount = 1}
        },
        energy_required = 3.0,
        allow_productivity = true
    }
})

-- Icy tarball recycling recipe
data:extend({
    {
        type = "recipe",
        name = "recycling-icy-tarball",
        category = "recycling",
        subgroup = "other",
        order = "z[recycling]-c[icy-tarball]",
        icon = "__quality__/graphics/icons/recycling.png",
        icon_size = 64,
        enabled = false,
        ingredients = {{type="item", name="icy-tarball", amount=1}},
        results = {
            {type = "item", name = "ice", amount = 1, probability = 0.2},
            {type = "item", name = "coal", amount = 1, probability = 0.2}
        },
        energy_required = 0.2,
        allow_productivity = true,
        unlock_results = false,
        hidden = true
    }
})
