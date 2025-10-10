-- Additional recipes if Space Exploration mod is enabled
local util = require("data-util")

if mods["space-exploration"] then
  se_delivery_cannon_recipes["chromite-ore"] = {name= "chromite-ore"}
  se_delivery_cannon_recipes["chromium-plate"] = {name= "chromium-plate"}
  se_delivery_cannon_recipes["heat-resistant-low-density-structure"] = {name= "heat-resistant-low-density-structure"}
  util.se_landfill({ore="chromite-ore"})

  util.se_matter({ore="chromite-ore", energy_required=1, quant_out=10, stream_out=60})
  data:extend({
  {
    type = "item-subgroup",
    name = "chromium",
    group = "resources",
    order = "a-h-z-a",
  }
  })
  util.set_item_subgroup("chromium-plate", "chromium")
  data:extend({
  {
    type = "item",
    name = "chromium-ingot",
    icons = {{icon = "__Chromium2__/graphics/icons/chromium-ingot.png", icon_size = 64}},
    order = "b-b",
    stack_size = 50,
    subgroup = "chromium",
  },
  {
    type = "fluid",
    name = "molten-chromium",
    default_temperature = 232,
    max_temperature = 232,
    base_color = {r=191, g=219, b=233},
    flow_color = {r=191, g=219, b=233},
    icons = {{icon = "__Chromium2__/graphics/icons/molten-chromium.png", icon_size = 64}},
    order = "a[molten]-a",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false,
    subgroup = "fluid",
  },
  {
    type = "recipe",
    category = "smelting",
    name = "molten-chromium",
    subgroup = "chromium",
    results = {
      {type = "fluid", name = "molten-chromium", amount = mods["Krastorio2"] and 750 or 900},
    },
    energy_required = 45,
    ingredients = {
      {name = mods["Krastorio2"] and "enriched-chromium" or "chromite-ore", amount = 24},
      {type = "fluid", name = "se-pyroflux", amount = 10},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
    order = "a-a"
  },
  {
    type = "recipe",
    name = "chromium-ingot",
    category = "casting",
    results = {{type="item", name="chromium-ingot", amount=1}},
    energy_required = 18.75,
    ingredients = {
      {type = "fluid", name = "molten-chromium", amount = 250},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
  },
  {
    type = "recipe",
    category = "crafting",
    name = "chromium-ingot-to-plate",

    icons = {
      {icon = "__Chromium2__/graphics/icons/chromium-plate.png", icon_size = 64},
      {icon = "__Chromium2__/graphics/icons/chromium-ingot.png", icon_size = 32, scale = 0.125, shift = {-8, -8}},
    },
    results = {
      {name = "chromium-plate", amount = 10},
    },
    energy_required = 3.75,
    ingredients = {
      {name = "chromium-ingot", amount = 1}
    },
    enabled = false,
    always_show_made_in = true,
    allow_decomposition = false,
    order = "a-c-b"
  },
  })
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "molten-chromium"})
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "chromium-ingot"})
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "chromium-ingot-to-plate"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "molten-chromium"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "chromium-ingot"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "chromium-ingot-to-plate"})
  if mods["Krastorio2"] then
    util.set_item_subgroup("enriched-chromium", "chromium")
    data.raw.recipe["enriched-chromium-plate"].order= "d[chromium-plate]"
    se_delivery_cannon_recipes["enriched-chromium"] = {name= "enriched-chromium"}
  end
  se_delivery_cannon_recipes["chromium-ingot"] = {name= "chromium-ingot"}

end