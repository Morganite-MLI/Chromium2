local util = require("data-util")

if mods["Krastorio2"] then
data:extend(
{
  {
    type = "item",
    name = "enriched-chromium",
    icon_size = 64,
    icon = "__Chromium2__/graphics/icons/enriched-chromium.png",
    group ="raw-material",
    subgroup = "chromium",
    order = "a",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "enriched-chromium",
    main_product="enriched-chromium",
    icon = "__Chromium2__/graphics/icons/enriched-chromium.png",
    icon_size = 64,
    category = "chemistry",
    energy_required = 3,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    group ="raw-material",
    subgroup = "chromium",
    ingredients =
    {
      {type = "fluid", name = "sulfuric-acid", amount = 3},
      {type = "fluid", name = "water", amount = 25, catalyst_amount = 25},
      {type = "item",  name = "chromite-ore", amount = 9}
    },
    results =
    {
      {type = "item",  name = "enriched-chromium", amount = 6},
      {type = "item",  name = "iron-ore", amount = 1},
      {type = "fluid", name = "kr-dirty-water", amount = 25, catalyst_amount = 25}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.721, g = 0.525, b = 0.043, a = 0.000},
      secondary = {r = 0.200, g = 0.680, b = 0.300, a = 0.357},
      tertiary = {r = 0.690, g = 0.768, b = 0.870, a = 0.000},
      quaternary = {r = 0.0, g = 0.980, b = 0.603, a = 0.900}
    },
    order = "e03[enriched-chromium]"
  },
  {
      type = "recipe",
      name = "enriched-chromium-plate",
      icons =
      {
        { icon = "__Chromium2__/graphics/icons/chromium-plate.png", icon_size = 64 },
        { icon = "__Chromium2__/graphics/icons/enriched-chromium.png", icon_size = 64, scale=0.125, shift= {-8, -8}},
      },
      category = "smelting",
      energy_required = 16,
      enabled = false,
      always_show_made_in = true,
      always_show_products = true,
      ingredients = { {type="item", name="enriched-chromium", amount=5} },
      results = { {type="item", name="chromium-plate", amount=5} },
      order = "a",
  },
	{
		type = "recipe",
		name = "dirty-water-filtration-chromium",
		category = "kr-fluid-filtration",
		icons =
		{
			{
				icon = data.raw.fluid["kr-dirty-water"].icon,
				icon_size = data.raw.fluid["kr-dirty-water"].icon_size
			},
			{
				icon = data.raw.item["chromite-ore"].icon,
				icon_size =	data.raw.item["chromite-ore"].icon_size,
				scale = 0.20,
				shift = {0, 4}
			}
		},
		icon_size = data.raw.fluid["kr-dirty-water"].icon_size,
		energy_required = 2,
		enabled = false,
		allow_as_intermediate = false,
		always_show_made_in = true,
		always_show_products = true,
		ingredients =
		{
			{type = "fluid", name = "kr-dirty-water", amount = 100, catalyst_amount = 100},
		},
		results =
		{
			{type = "fluid", name = "water", amount = 90, catalyst_amount = 90},
			{type = "item",  name = "stone", probability = 0.40, amount = 1},
			{type = "item",  name = "chromite-ore", probability = 0.10, amount = 1},
		},
		crafting_machine_tint =
		{
			primary = {r = 0.60, g = 0.20, b = 0, a = 0.6},
			secondary = {r = 1.0, g = 0.843, b = 0.0, a = 0.9}
		},
		group ="raw-material",
    subgroup = "chromium",
		order = "w013[dirty-water-filtration-chromium]"
	}
})
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "enriched-chromium" })
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "enriched-chromium-plate" })
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "dirty-water-filtration-chromium" })

util.add_productivity("enriched-chromium")
util.add_productivity("enriched-chromium-plate")
end
