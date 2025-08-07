data:extend({
    {
        type = "fluid",
        name = "sludge",
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64,
        base_color = {r = 0.4, g = 0.3, b = 0.2},
        flow_color = {r = 0.6, g = 0.4, b = 0.3},
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "0.2kJ",
        subgroup = "fluid",
        order = "a[fluid]-z[sludge]"
    }
})
