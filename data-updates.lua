-- Modify Fulgora ocean to use sludge
data.raw["tile"]["oil-ocean-shallow"].fluid = "sludge"
data.raw["tile"]["oil-ocean-deep"].fluid = "sludge"

data.raw.item['scrap'].icon = "__fulgora-enhanced-scrap__/graphics/scrap.png"
data.raw.item['scrap'].pictures =
{
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/scrap.png",   scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/scrap-1.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/scrap-2.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/scrap-3.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/scrap-4.png", scale = 0.5, mipmap_count = 4 },
    { size = 64, filename = "__fulgora-enhanced-scrap__/graphics/scrap-5.png", scale = 0.5, mipmap_count = 4 }
}

data.raw.recipe['scrap-recycling']['results'] = {
    {type = "item", name = "iron-gear-wheel", amount = 1, probability = 0.02},
    {type = "item", name = "concrete", amount = 1, probability = 0.006},
    {type = "item", name = "steel-plate", amount = 1, probability = 0.004},
    {type = "item", name = "battery", amount = 1, probability = 0.008},
    {type = "item", name = "advanced-circuit", amount = 1, probability = 0.003},
    {type = "item", name = "processing-unit", amount = 1, probability = 0.006},
    {type = "item", name = "low-density-structure", amount = 1, probability = 0.005},
    {type = "item", name = "stone", amount = 1, probability = 0.005},
    {type = "item", name = "holmium-ore", amount = 1, probability = 0.01}
}
