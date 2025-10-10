local util = require("data-util")

data:extend({{
  type = "item-subgroup",
  name = "chromium",
  group = "intermediate-products",
  order = "c"
},
{
type = "item-subgroup",
name = "frame-components",
group = "intermediate-products",
order = "f"
}
})

data:extend({
  {
    type = "item",
    name = "chromium-plate",
    icon = "__Chromium__/graphics/icons/chromium-plate.png",
    icon_size = 64,
    subgroup = "chromium",
    order = "b[chromium-plate]",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "chromium-plate",
    category = "smelting",
    order = "a[chromium-plate]",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__Chromium__/graphics/icons/chromium-plate.png", icon_size = 64},
          { icon = "__Chromium__/graphics/icons/chromite-ore.png", icon_size = 64, scale=0.125, shift= {-8, -8}},
        } or {
          { icon = "__Chromium__/graphics/icons/chromium-plate.png", icon_size = 64},
        }
),
    main_product = "chromium-plate",
    enabled = false,
    energy_required = 24,
    ingredients = {{type="item", name="chromite-ore", amount=15}},
    results = {
      {type="item", name = "chromium-plate", amount=5}
    }
  }
})

if mods["Krastorio2"] then
    data:extend({
      {
        type = "recipe",
        name = "chromium-electrolysis",
        icons = {
          { icon = "__Chromium__/graphics/icons/chromium-plate.png", icon_size = 64},
          { icon = "__Chromium__/graphics/icons/chromite-ore.png", icon_size = 64, scale=0.125, shift= {-8, -8}}
        },
        category = "electrolysis",
        order = "a[chromium-plate]",
        energy_required = 25,
        enabled = false,
        always_show_made_in = true,
        ingredients = {
          {type = "fluid", name = "sulfuric-acid", amount = 25},
          {type = "fluid", name = "ammonia", amount = 50},
          {type = "item",  name = "chromite-ore", amount = 20}
        },
        results = {
          {type="item", name = "chromium-plate", amount=10},
          {type="item", name = "iron-plate", amount=5}
        },
        subgroup = "chromium",
      }
    })
end

local stainless_steel_ingredients = {{type="item", name="steel-plate", amount=8}, {type="item", name="chromium-plate", amount=2}}
if mods["IfNickel-Updated"] then
    stainless_steel_ingredients = {{type="item", name="steel-plate", amount=8}, {type="item", name="chromium-plate", amount=1}, {type="item", name="nickel-plate", amount=1}}
end
local stainless_steel_category = "crafting"
if mods["bzfoundry"] then
  stainless_steel_category = "founding"
end
data:extend({
  {
    type = "item",
    name = "stainless-steel-plate",
    icon = "__Chromium__/graphics/icons/stainless-steel-plate.png",
    icon_size = 64,
    subgroup = "chromium",
    order = "b[stainless-steel-plate]",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "stainless-steel-plate",
    category = stainless_steel_category,
    order = "d[stainless-steel-plate]",
    enabled = false,
    energy_required = 4,
    ingredients = stainless_steel_ingredients,
    results = {{type="item", name="stainless-steel-plate", amount=10}},
  }
})

local polyethylene_plastic_ingredients = {
    {type = "fluid", name = "petroleum-gas", amount = 50},
    {type = "fluid", name = "steam", amount = 50},
    {type = "item",  name = "chromium-plate", amount = 2}
}
if mods["bzgas"] and mods["bzsilicon"] then
      polyethylene_plastic_ingredients = {
        {type = "fluid", name = "gas", amount = 50},
        {type = "fluid", name = "steam", amount = 50},
        {type = "item",  name = "chromium-plate", amount = 2},
        {type = "item",  name = "silica", amount = 2}
    }
end
data:extend({
    {
      type = "recipe",
      name = "polyethylene-plastic",
      category = "chemistry",
      order = "d[plastic-bar]",
      enabled = false,
      energy_required = 8,
      ingredients = polyethylene_plastic_ingredients,
      results = {{type="item", name="plastic-bar", amount=15}},
    }
  })

local chromel_r_fabric_ingredients = {{type="item", name="copper-plate", amount=8}, {type="item", name="chromium-plate", amount=2}}
if mods["IfNickel-Updated"] then
  chromel_r_fabric_ingredients = {{type="item", name="nickel-plate", amount=8}, {type="item", name="chromium-plate", amount=2}}
end
local chromel_r_fabric_crafting = "crafting"
if mods["248k-Redux"] then
  chromel_r_fabric_crafting = "fi_fiberer_category"
end
data:extend({
  {
    type = "item",
    name = "chromel-r-fabric",
    icon = "__Chromium__/graphics/icons/chromel-r-fabric.png",
    icon_size = 64,
    subgroup = "chromium",
    order = "c[chromel-r-fabric]",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "chromel-r-fabric",
    category = chromel_r_fabric_crafting,
    order = "c[chromel-r-fabric]",
    enabled = false,
    energy_required = 5,
    ingredients = chromel_r_fabric_ingredients,
    results = {{type="item", name="chromel-r-fabric", amount=5}},
  }
})

local basic_vehicle_frame_ingredients = {{type="item", name="steel-plate", amount=5}, {type="item", name="copper-plate", amount=10}}
if mods["bzaluminum"] then
  basic_vehicle_frame_ingredients = {{type="item", name="steel-plate", amount=5}, {type="item", name="alumina", amount=10}}
end
data:extend({
  {
    type = "item",
    name = "basic-vehicle-frame",
    icon = "__Chromium__/graphics/icons/basic-vehicle-frame.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    order = "v[basic-vehicle-frame]",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "basic-vehicle-frame",
    category = "crafting",
    order = "v[basic-vehicle-frame]",
    enabled = false,
    energy_required = 4,
    ingredients = basic_vehicle_frame_ingredients,
    results = {{type="item", name="basic-vehicle-frame", amount=1}},
  }
})

local vehicle_frame_ingredients = {{type="item", name="basic-vehicle-frame", amount=1}, {type="item", name="stainless-steel-plate", amount=15}, {type="item", name="copper-plate", amount=20}}
if mods["bzaluminum"] then
  vehicle_frame_ingredients = {{type="item", name="basic-vehicle-frame", amount=1}, {type="item", name="stainless-steel-plate", amount=15}, {type="item", name="aluminum-6061", amount=20}}
end
data:extend({
  {
    type = "item",
    name = "vehicle-frame",
    icon = "__Chromium__/graphics/icons/vehicle-frame.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    order = "v[vehicle-frame]",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "vehicle-frame",
    category = "crafting",
    order = "v[vehicle-frame]",
    enabled = false,
    energy_required = 6,
    ingredients = vehicle_frame_ingredients,
    results = {{type="item", name="vehicle-frame", amount=1}},
  }
})

local inconel_ingredients = {{type="item", name="steel-plate", amount=5}, {type="item", name="chromium-plate", amount=3}, {type="item", name="iron-plate", amount=1}, mods["Tantalite"] and {type="item", name="niobium-plate", amount=1}}
if mods["IfNickel-Updated"] then
  inconel_ingredients = {{type="item", name="nickel-plate", amount=5}, {type="item", name="chromium-plate", amount=3}, {type="item", name="iron-plate", amount=1}, mods["Tantalite"] and {type="item", name="niobium-plate", amount=1}}
end
local inconel_category = "crafting"
local inconel_subgroup = "intermediate-product"
if mods["bzfoundry"] then
  inconel_category = "founding"
  inconel_subgroup = "foundry-intermediate"
end
data:extend({
  {
    type = "item",
    name = "inconel-718",
    icon = "__Chromium__/graphics/icons/inconel-718.png",
    icon_size = 64,
    group = "intermediate-products",
    subgroup = inconel_subgroup,
    order = "i",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "inconel-718",
    category = inconel_category,
    order = "i",
    enabled = false,
    energy_required = 30,
    ingredients = inconel_ingredients,
    results = {{type="item", name="inconel-718", amount=10}},
  }
})

local automation_core3_ingredients = {(data.raw.item["automation-core-2"] and {type="item", name="automation-core-2", amount=1}) or {type="item", name="steel-plate", amount=5}, {type="item", name="inconel-718", amount=10}}
local automation_core3_subgroup = "intermediate-product"
if (mods["BrassTacks-Updated"] and data.raw.item["advanced-gearbox"]) and (mods["IfNickel-Updated"] and data.raw.item["advanced-machining-tool"]) then --check for hardmode
  automation_core3_ingredients = {data.raw.item["automation-core-2"] and {type="item", name="automation-core-2", amount=1}, {type="item", name="advanced-gearbox", amount=1}, {type="item", name="complex-joint", amount=2}, {type="item", name="advanced-machining-tool", amount=2}, {type="item", name="inconel-718", amount=4}}
  automation_core3_subgroup = "articulated-components"
end
  data:extend({
    {
      type = "item",
      name = "automation-core-3",
      icon = "__Chromium__/graphics/icons/automation-core-3.png",
      icon_size = 64,
      group = "intermediate-product",
      subgroup = automation_core3_subgroup,
      order = "d",
      stack_size = 50,
    },
    {
      type = "recipe",
      name = "automation-core-3",
      category = "crafting",
      order = "d",
      enabled = false,
      energy_required = 5,
      ingredients = automation_core3_ingredients,
      results = {{type="item", name="automation-core-3", amount=1}},
    }
  })
  if mods["space-exploration"] then
    util.add_unlock("se-space-assembling","automation-core-3")
  else
    util.add_unlock("automation-3","automation-core-3")
  end
  util.add_productivity("automation-core-3")

local turbines_blade_ingredients = {{type="item", name="inconel-718", amount=10}, {type="item", name="air-bearing", amount=2}}
if mods["248k-Redux"] then
  table.insert(turbines_blade_ingredients, {type="item", name="fi_materials_GFK", amount=5})
end
local turbines_blade_subgroup = "intermediate-product"
if mods["IfNickel-Updated"] then
  turbines_blade_subgroup = "engine-components"
end
data:extend({
  {
    type = "item",
    name = "turbine-blades",
    icon = "__Chromium__/graphics/icons/turbine-blades.png",
    icon_size = 64,
    group = "intermediate-products",
    subgroup = turbines_blade_subgroup,
    order = "t",
    stack_size = 50,
  },
  {
    type = "recipe",
    name = "turbine-blades",
    category = "crafting",
    order = "t",
    enabled = false,
    energy_required = 15,
    ingredients = turbines_blade_ingredients,
    results = {{type="item", name="turbine-blades", amount=1}},
  }
})
if mods["space-exploration"] then
  util.add_unlock("steam-turbine","turbine-blades")
else
  util.add_unlock("nuclear-power","turbine-blades")
end
local hrld_structure_subgroup = "intermediate-product"
if mods["IfNickel-Updated"] then
  hrld_structure_subgroup ="frame-components"
end
data:extend({
  {
    type = "item",
    name = "heat-resistant-low-density-structure",
    icon = "__Chromium__/graphics/icons/heat-resistant-low-density-structure.png",
    icon_size = 64,
    group = "intermediate-products",
    subgroup = hrld_structure_subgroup,
    order = "h",
    stack_size = 50,
  },
  {
    type = "recipe",
    name = "heat-resistant-low-density-structure",
    category = "crafting",
    order = "h",
    enabled = false,
    energy_required = 8,
    ingredients = {{type="item", name="inconel-718", amount=1}, {type="item", name="low-density-structure", amount=1}, mods["space-exploration"] and {type="item", name="se-heat-shielding", amount=1}},
    results = {{type="item", name="heat-resistant-low-density-structure", amount=2}},
  }
})

local air_bearing_ingredients = {{type="item", name="stainless-steel-plate", amount=2},{ type = "fluid", name = "lubricant", amount = 5 }}
if data.raw.item["cryogenic-seal"] then
  table.insert(air_bearing_ingredients, {type="item", name="cryogenic-seal", amount=1})
end
data:extend({
  {
    type = "item",
    name = "air-bearing",
    icon = "__Chromium__/graphics/icons/air-bearing.png",
    icon_size = 64,
    group = "intermediate-products",
    subgroup = "intermediate-product",
    order = "h",
    stack_size = 100,
  },
  {
    type = "recipe",
    name = "air-bearing",
    category = "crafting-with-fluid",
    order = "h",
    enabled = false,
    energy_required = 5,
    ingredients = air_bearing_ingredients,
    results = {{type="item", name="air-bearing", amount=1}},
  }
})
if mods["Krastorio2"] then
  util.add_unlock("steam-turbine","air-bearing")
else
  util.add_unlock("nuclear-power","air-bearing")
end
local advanced_electric_motor_subgroup = "intermediate-product"
if mods["IfNickel-Updated"] then
  advanced_electric_motor_subgroup = "engine-components"
end
local advanced_electric_motor_ingredients = {{type="item", name="inconel-718", amount=2}, {type="item", name="air-bearing", amount=1}, {type="item", name="electric-engine-unit", amount=2}, { type = "fluid", name = "lubricant", amount = 40 }}
if mods["ThemTharHills-Updated"] then
  table.insert(advanced_electric_motor_ingredients, {type="item", name="hv-power-regulator", amount=1})
end
data:extend({
  {
    type = "item",
    name = "advanced-electric-motor",
    icon = "__Chromium__/graphics/icons/advanced-electric-motor.png",
    icon_size = 64,
    group = "intermediate-products",
    subgroup = advanced_electric_motor_subgroup,
    order = "g",
    stack_size = 50,
  },
  {
    type = "recipe",
    name = "advanced-electric-motor",
    category = "crafting-with-fluid",
    order = "g",
    enabled = false,
    energy_required = 12,
    ingredients = advanced_electric_motor_ingredients,
    results = {{type="item", name="advanced-electric-motor", amount=1}},
  }
})
if mods["space-exploration"] then
  util.add_unlock("se-space-assembling","advanced-electric-motor")
  else
  util.add_unlock("automation-3","advanced-electric-motor")
end

if mods["space-exploration"] then
  data:extend({
    {
      type = "recipe",
      name = "beryllium-heat-resistant-low-density-structure",
      icons = {
        { icon = "__Chromium__/graphics/icons/heat-resistant-low-density-structure.png", icon_size = 64},
        { icon = "__space-exploration-graphics__/graphics/icons/astronomic/planet-orbit.png", icon_size = 64, scale=0.25, shift= {-8, -8}}
      },
      category = "space-crafting",
      order = "h",
      enabled = false,
      energy_required = 10,
      ingredients = {{type="item", name="inconel-718", amount=1}, {type="item", name="se-beryllium-plate", amount=1}, {type="item", name="se-heat-shielding", amount=1}},
      results = {{type="item", name="heat-resistant-low-density-structure", amount=4}},
    }
  })
end

util.add_productivity("chromium-plate")
util.add_productivity("stainless-steel-plate")
util.add_productivity("polyethylene-plastic")
util.add_productivity("chromel-r-fabric")
util.add_productivity("basic-vehicle-frame")
util.add_productivity("vehicle-frame")
util.add_productivity("heat-resistant-low-density-structure")
util.add_productivity("advanced-electric-motor")
util.add_productivity("air-bearing")