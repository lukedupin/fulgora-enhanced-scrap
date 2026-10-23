data:extend({
    {
        type = "recipe",
        name = "icy-tarball",
        category = "chemistry",
        subgroup = "intermediate-product",
        order = "g[icy-tarball]",
        icon = "__fulgora-enhanced-scrap__/graphics/frozen_tarball.png",
        icon_size = 64,
        enabled = false,
        ingredients = {
            {type = "fluid", name = "sludge", amount = 50},
            {type = "item", name = "scrap", amount = 1}
        },
        results = {
            {type = "item", name = "icy-tarball", amount = 1}
        },
        energy_required = 0.5,
        allow_productivity = true
    }
})

data:extend({
    {
        type = "recipe",
        name = "tarball-oil",
        category = "chemistry",
        subgroup = "intermediate-product",
        order = "g[tarball]",
        icon = "__fulgora-enhanced-scrap__/graphics/tarball.png",
        icon_size = 64,
        enabled = false,
        ingredients = {
            {type = "fluid", name = "steam", amount = 50},
            {type = "item", name = "tarball", amount = 1}
        },
        results = {
            {type = "fluid", name = "crude-oil", amount = 25}
        },
        energy_required = 0.25,
        allow_productivity = true
    }
})

--local ice_stone = table.deepcopy(data.raw.recipe['scrap-recycling'])
--ice_stone.name = "recycling-ice-stone"
--ice_stone.ingredients = {{type="item", name="ice", amount=1}}
--ice_stone.results = {
    --{type = "item", name = "stone", amount = 1, independent_probability = 0.1}
--}

-- Add recycling recipe for ice to create stone
-- data:extend({ ice_stone })

local icy_tarball = table.deepcopy(data.raw.recipe['scrap-recycling'])
icy_tarball.name = "recycling-icy-tarball"
icy_tarball.icons = {
    {
        icon = "__quality__/graphics/icons/recycling.png"
    },
    {
        icon = "__fulgora-enhanced-scrap__/graphics/frozen_tarball.png",
        scale = 0.4
    },
    {
        icon = "__quality__/graphics/icons/recycling-top.png"
    }
}
icy_tarball.ingredients = {{type="item", name="icy-tarball", amount=1}}
icy_tarball.results = {
    {type = "item", name = "ice", amount = 1, independent_probability = 0.5},
    {type = "item", name = "tarball", amount = 1, independent_probability = 0.5},
}

-- Add recycling recipe for ice to create stone
data:extend({ icy_tarball })

