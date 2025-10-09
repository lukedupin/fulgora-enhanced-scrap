local tarball = table.deepcopy(data.raw['item']['coal'])

tarball.type = "item"
tarball.name = "tarball"
tarball.icon = "__fulgora-enhanced-scrap__/graphics/tarball.png"
tarball.icon_size = 64
tarball.order = "g[tarball]"
tarball.fuel_category = "chemical"
tarball.fuel_value = "6MJ"
tarball.burnt_result = "stone"
tarball.pictures =
{
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/tarball.png", scale = 0.5, mipmap_count = 4 }
}

data:extend({ tarball })
--    {
--        type = "item",
--        name = "icy-tarball",
--        icon = "__fulgora-enhanced-scrap__/graphics/frozen_tarball.png",
--        icon_size = 64,
--        subgroup = "intermediate-product",
--        order = "g[icy-tarball]",
--        stack_size = 50
--    }
--}
