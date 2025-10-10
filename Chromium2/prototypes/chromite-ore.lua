local resource_autoplace = require('resource-autoplace');
local item_sounds = require('__base__.prototypes.item_sounds')

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["chromite-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["chromite-ore"] = {}
resource_autoplace.initialize_patch_set("chromite-ore", true)

data:extend({
  {
    type = "autoplace-control",
    category = "resource",
    name = "chromite-ore",
    richness = true,
    order = "b-e"
  },
  {
    type = "resource",
    icon_size = 64,
    icon_mipmaps = 3,
    name = "chromite-ore",
    icon = "__Chromium2__/graphics/icons/chromite-ore.png",
    flags = { "placeable-neutral" },
    order = "a-b-a",
    map_color = { r = 0.90, g = 0.80, b = 1.00 },
    minable =
    {
      hardness = 1,
      mining_particle = "copper-ore-particle",
      mining_time = 1,
      result = "chromite-ore"
    },
    collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },

    autoplace = resource_autoplace.resource_autoplace_settings {
      name = "chromite-ore",
      order = "b-z",
      base_density = 2,
      base_spots_per_km2 = 1,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.0,
    },

    stage_counts = { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
    stages =
    {
      sheet =
      {
        filename = "__Chromium2__/graphics/entity/ores/hr-chromite-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
  },
  {
    type = "item",
    name = "chromite-ore",
    icon_size = 64,
    icon_mipmaps = 3,
    icon = "__Chromium2__/graphics/icons/chromite-ore.png",
    subgroup = "raw-resource",
    order = "t-c-a",
    stack_size = 50,
    weight = 20*kg,
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
  },
})
