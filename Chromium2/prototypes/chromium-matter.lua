-- Matter recipes for Krastorio2
if mods["Krastorio2"] then
  local matter = require("__Krastorio2__/prototypes/libraries/matter")

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
            icon = "__Chromium2__/graphics/icons/chromite-ore.png",
            icon_size = 64,
            scale = 1.4,
          }
        },
        prerequisites = { "kr-matter-processing" },
        unit =
        {
          count = 350,
          ingredients =
          {
            { "production-science-pack", 1 },
            { "utility-science-pack",    1 },
            { "kr-matter-tech-card",        1 }
          },
          time = 45
        }
      },
    })

  matter.make_recipes({
    material = { type = "item", name = "chromite-ore", amount = 10 },
    matter_count = 5,
    energy_required = 1,
    need_stabilizer = false,
    unlocked_by_technology = "chromium-matter-processing"
  })

  matter.make_recipes({
    material = { type = "item", name = "chromium-plate", amount = 10 },
    matter_count = 10,
    energy_required = 3,
    only_deconversion = true,
    need_stabilizer = true,
    unlocked_by_technology = "chromium-matter-processing"
  })
end
