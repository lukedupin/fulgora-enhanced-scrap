local tarball = table.deepcopy(data.raw['item']['scrap'])

tarball.type = "item"
tarball.name = "icy-tarball"
tarball.icon = "__fulgora-enhanced-scrap__/graphics/frozen_tarball.png"
tarball.icon_size = 64
tarball.order = "g[icy-tarball]"
tarball.pictures =
{
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/frozen_tarball.png", scale = 0.5, mipmap_count = 4 }
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
