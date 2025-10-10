-- Matter recipes for Krastorio2
if mods["Krastorio2"] then
local util = require("data-util")
local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")

data:extend(
{
  {
    type = "technology",
    name = "chromium-matter-processing",
    icons =
    {
      {
        icon = "__Krastorio2Assets__/technologies/matter-coal.png",
        icon_size = 256,
      },
      {
        icon = "__Chromium__/graphics/icons/chromite-ore.png",
        icon_size = 64,
        scale = 1.4,
      }
    },
    prerequisites = {"kr-matter-processing"},
    unit =
  	{
      count = 350,
      ingredients =
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}
      },
      time = 45
    }
  },
})

local chromium_ore_matter =
	{
    item_name = "chromite-ore",
    minimum_conversion_quantity = 10,
    matter_value = 5,
    energy_required = 1,
    need_stabilizer = false,
    unlocked_by_technology = "chromium-matter-processing"
	}
matter.createMatterRecipe(chromium_ore_matter)

local chromium_plate_matter =
	{
    item_name = "chromium-plate",
    minimum_conversion_quantity = 10,
    matter_value = 10,
    energy_required = 3,
    only_deconversion = true,
    need_stabilizer = true,
    unlocked_by_technology = "chromium-matter-processing"
	}
matter.createMatterRecipe(chromium_plate_matter)
end