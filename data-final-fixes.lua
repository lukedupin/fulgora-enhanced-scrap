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
