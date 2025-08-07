-- Deep copy the original scrap item
local enhanced_scrape = table.deepcopy(data.raw.item.scrap)
enhanced_scrape.name = "enhanced-scrap"
enhanced_scrape.icon = "__base__/graphics/icons/scrap.png" -- You might want to create a unique icon
enhanced_scrape.localised_name = {"item-name.enhanced-scrap"}
enhanced_scrape.order = "a[scrap]-b[enhanced]"

data:extend({enhanced_scrape})