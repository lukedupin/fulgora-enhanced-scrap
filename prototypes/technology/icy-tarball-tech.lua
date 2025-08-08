-- Add icy tarball recipe to recycling technology
--if data.raw.technology["recycling"] then
    table.insert(data.raw.technology["recycling"].effects, {
        type = "unlock-recipe",
        recipe = "icy-tarball"
    })
    
    table.insert(data.raw.technology["recycling"].effects, {
        type = "unlock-recipe",
        recipe = "recycling-icy-tarball"
    })
--end

-- Add enhanced scrap processing to a relevant technology (e.g., advanced material processing)
if data.raw.technology["advanced-material-processing"] then
    table.insert(data.raw.technology["advanced-material-processing"].effects, {
        type = "unlock-recipe",
        recipe = "enhanced-scrap-processing"
    })
    
    table.insert(data.raw.technology["advanced-material-processing"].effects, {
        type = "unlock-recipe",
        recipe = "recycling-enhanced-scrap"
    })
elseif data.raw.technology["recycling"] then
    -- Fallback to recycling technology if advanced-material-processing doesn't exist
    table.insert(data.raw.technology["recycling"].effects, {
        type = "unlock-recipe",
        recipe = "enhanced-scrap-processing"
    })
    
    table.insert(data.raw.technology["recycling"].effects, {
        type = "unlock-recipe",
        recipe = "recycling-enhanced-scrap"
    })
end
