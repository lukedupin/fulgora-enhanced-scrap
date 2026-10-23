if data.raw.recipe["electrolyte"] then
  -- Find and replace heavy-oil with light-oil in the recipe
  for _, ingredient in pairs(data.raw.recipe["electrolyte"].ingredients) do
    if ingredient.name == "heavy-oil" or ingredient[1] == "heavy-oil" then
      -- Handle both table formats Factorio uses for ingredients
      if ingredient.name then
        ingredient.name = "light-oil"
      else
        ingredient[1] = "light-oil"
      end
      break
    end
  end
end

-- Change night vision goggles size from 2x2 to 1x1
if data.raw["armor"]["night-vision-equipment"] then
  data.raw["armor"]["night-vision-equipment"].inventory_size_bonus = 1
end

-- If it's an equipment item instead of armor
if data.raw["item"]["night-vision-equipment"] then
  data.raw["item"]["night-vision-equipment"].stack_size = 1
end

-- The actual equipment grid item
if data.raw["night-vision-equipment"]["night-vision-equipment"] then
  data.raw["night-vision-equipment"]["night-vision-equipment"].shape = {
    width = 1,
    height = 1,
    type = "full"
  }
end
