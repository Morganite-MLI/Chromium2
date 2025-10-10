local util = require("data-util")

if mods["Krastorio2"] then
data:extend(
    {
      {
        type = "technology",
        name = "chromium-processing",
        icon_size = 64,
        icon = "__Chromium__/graphics/icons/chromite-ore.png",
        prerequisites = {"kr-advanced-chemistry"},
        effects = {
            {
              type = "unlock-recipe",
              recipe = "chromium-electrolysis",
            },
        },
        unit =
        {
          count = 150,
          ingredients =
          {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            mods["Krastorio2"] and { "chemical-science-pack", 1 }
          },
          time = 30
        }
      },
    })
    if mods["IfNickel"] and data.raw.item["gimbaled-thruster"] then
      util.add_prerequisite("gimbaled-thruster", "chromium-processing")
      --not sure why gimbaled thrusters don't need rocketry
      util.add_prerequisite("gimbaled-thruster", "rocketry")
  end
end
local polyethylene_plastic_prerequisites = {"advanced-material-processing-2"}
if mods["Krastorio2"] then
  polyethylene_plastic_prerequisites = {"chromium-processing"}
end
data:extend(
{
  {
    type = "technology",
    name = "polyethylene-plastic",
    icons = {
        { icon = "__Chromium__/graphics/technology/polyethylene.png", icon_size = 64}
      },
    prerequisites = polyethylene_plastic_prerequisites,
    effects = {
        {
          type = "unlock-recipe",
          recipe = "polyethylene-plastic",
        },
    },
    unit =
  	{
      count = 200,
      ingredients =
      {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 }
      },
      time = 45
    }
  },
})

data:extend(
    {
      {
        type = "technology",
        name = "stainless-steel-processing",
        icons = {
            { icon = "__Chromium__/graphics/icons/stainless-steel-plate.png", icon_size = 64}
          },
        prerequisites = { "advanced-material-processing"},
        effects = {
            {
              type = "unlock-recipe",
              recipe = "stainless-steel-plate",
            },
            {
              type = "unlock-recipe",
              recipe = "chromium-plate",
            },
            {
              type = "unlock-recipe",
              recipe = "air-bearing",
            }
        },
        unit =
        {
          count = 75,
          ingredients =
          {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 30
        }
      },
    })
    local chrome_alloys_prerequisites = {"advanced-material-processing-2"}
    if mods["Krastorio2"] then
      chrome_alloys_prerequisites = {"chromium-processing"}
    end
    data:extend(
      {
        {
          type = "technology",
          name = "chrome-alloys",
          icons = {
              { icon = "__Chromium__/graphics/icons/inconel-718.png", icon_size = 64}
            },
          prerequisites = chrome_alloys_prerequisites,
          effects = {
              {
                type = "unlock-recipe",
                recipe = "inconel-718",
              },
          },
          unit =
          {
            count = 150,
            ingredients =
            {
              { "automation-science-pack", 1 },
              { "logistic-science-pack", 1 },
              { "chemical-science-pack", 1 }
            },
            time = 30
          }
        },
      })
      util.add_prerequisite("steam-turbine","chrome-alloys")
  data:extend(
    {
      {
        type = "technology",
        name = "basic-vehicle-frame-production",
        icons = {
            { icon = "__Chromium__/graphics/icons/basic-vehicle-frame.png", icon_size = 128}
          },
        prerequisites = {"steel-processing"},
        effects = {
            {
              type = "unlock-recipe",
              recipe = "basic-vehicle-frame",
            }
        },
        unit =
        {
          count = 75,
          ingredients =
          {
            { "automation-science-pack", 1 }
          },
          time = 10
        }
      },
    })
    util.add_prerequisite("automobilism", "basic-vehicle-frame-production")

    data:extend(
      {
        {
          type = "technology",
          name = "vehicle-frame-production",
          icons = {
              { icon = "__Chromium__/graphics/icons/vehicle-frame.png", icon_size = 128}
            },
          prerequisites = { "stainless-steel-processing", "automobilism"},
          effects = {
              {
                type = "unlock-recipe",
                recipe = "vehicle-frame",
              }
          },
          unit =
          {
            count = 175,
            ingredients =
            {
              { "automation-science-pack", 1 },
              { "logistic-science-pack", 1 },
              { "chemical-science-pack", 1 }
            },
            time = 30
          }
        },
      })
      util.add_prerequisite("tank", "vehicle-frame-production")

      local chromel_r_fabric_prerequisites = {"rocket-silo"}
      local chromel_r_fabric_tech = {{ "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "production-science-pack", 1 }}

      if mods["space-exploration"] then
        chromel_r_fabric_prerequisites = {"se-rocket-science-pack"}
        chromel_r_fabric_tech = {{ "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 }}
      end

      data:extend(
        {
          {
            type = "technology",
            name = "chromel-r-fabric",
            icons = {
                { icon = "__Chromium__/graphics/icons/chromel-r-fabric.png", icon_size = 64}
              },
            prerequisites = chromel_r_fabric_prerequisites,
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "chromel-r-fabric",
                }
            },
            unit =
            {
              count = 200,
              ingredients = chromel_r_fabric_tech,
              time = 30
            }
          },
        })
        if mods["space-exploration"] then
          util.add_prerequisite("se-thruster-suit", "chromel-r-fabric")
        end
        if mods["IfNickel"] and data.raw.item["nitinol-plate"] then
          util.add_prerequisite("nitinol-processing", "chromel-r-fabric")
        end
      local hr_low_density_structure_prerequisites = {"rocket-silo"}
      local hr_low_density_structure_tech = {{ "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "production-science-pack", 1 }}

      if mods["space-exploration"] then
        hr_low_density_structure_prerequisites = {"se-rocket-science-pack"}
        hr_low_density_structure_tech = {{ "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
      { "chemical-science-pack", 1 },
      { "se-rocket-science-pack", 1 }}
      end

      data:extend(
        {
          {
            type = "technology",
            name = "heat-resistant-low-density-structure",
            icons = {
                { icon = "__Chromium__/graphics/icons/heat-resistant-low-density-structure.png", icon_size = 64}
              },
            prerequisites = hr_low_density_structure_prerequisites,
            effects = {
                {
                  type = "unlock-recipe",
                  recipe = "heat-resistant-low-density-structure",
                }
            },
            unit =
            {
              count = 150,
              ingredients = hr_low_density_structure_tech,
              time = 30
            }
          },
        })
        if mods["space-exploration"] then
          data:extend(
          {
            {
              type = "technology",
              name = "beryllium-heat-resistant-low-density-structure",
              icons = {
                { icon = "__Chromium__/graphics/icons/heat-resistant-low-density-structure.png", icon_size = 64},
                { icon = "__space-exploration-graphics__/graphics/icons/astronomic/planet-orbit.png", icon_size = 64, scale=0.25, shift= {-8, -8}}
              },
              prerequisites = {"se-astronomic-science-pack-1"},
              effects = {
                  {
                    type = "unlock-recipe",
                    recipe = "beryllium-heat-resistant-low-density-structure",
                  }
              },
              unit =
              {
                count = 100,
                ingredients =
                {{ "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "se-rocket-science-pack", 1 },
                { "space-science-pack", 1 },
                { "utility-science-pack", 1 },
                { "se-astronomic-science-pack-1", 1 }
                },
                time = 45
              }
            },
          })
        end