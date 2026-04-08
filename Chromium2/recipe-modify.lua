local util = require("data-util")

-- Main vanilla changes
util.replace_ingredient("car", "steel-plate", "basic-vehicle-frame",1)
util.replace_ingredient("tank", "steel-plate", "vehicle-frame",1)

util.add_ingredient("steam-turbine", "turbine-blades", 4)
util.remove_ingredient("steam-turbine", "copper-plate")

util.remove_ingredient("assembling-machine-3", "electric-engine-unit")

-- Mod changes
if mods["248k-Redux"] then
    util.replace_ingredient("fi_low-density-structure", "copper-plate", "chromel-r-fabric", 10)
    util.remove_ingredient("steam-turbine", "fi_GFK")
end

if mods["bzaluminum2"] then
    util.remove_ingredient("car", "aluminum-6061")
    util.remove_ingredient("vehicle-warden", "aluminum-6061")
    util.add_ingredient("vehicle-warden", "vehicle-frame", 1)

    util.remove_ingredient("tank", "alumina")
end

if mods["RampantArsenal"]  then
    util.replace_ingredient("advanced-car-vehicle-rampant-arsenal", "copper-plate", "vehicle-frame",1)
    util.add_prerequisite("rampant-arsenal-technology-cars-2", "vehicle-frame-production")
end

if mods["aai-industry"] then
    util.remove_ingredient("area-mining-drill", "electric-engine-unit")
    util.remove_ingredient("area-mining-drill", "hv-power-regulator")
    util.add_ingredient("area-mining-drill", "advanced-electric-motor", 4)
end

if mods["space-exploration"] then
    util.replace_ingredient("se-thruster-suit", "low-density-structure", "chromel-r-fabric")
end

if mods["Indium2"] then
    util.replace_ingredient("cryogenic-seal", "steel-plate", "stainless-steel-plate")
end

if mods["bobassembly"] then
    util.add_ingredient("centrifuge-2", "air-bearing", 20)
end

if mods["space-exploration"] then
    util.add_product(mods["space-exploration"] and "se-scrap-hard-recycling", { type = "item", name = "chromium-ore", amount=1, probability=0.05})

    util.remove_ingredient("se-space-assembling-machine", "low-density-structure")
    util.remove_ingredient("se-space-assembling-machine", "se-heat-shielding")
    util.remove_ingredient("se-space-assembling-machine", "hv-power-regulator")
    util.add_ingredient("se-space-assembling-machine", "heat-resistant-low-density-structure", 12)
    util.replace_ingredient("se-space-assembling-machine", "electric-engine-unit", "advanced-electric-motor", 8)

    util.remove_ingredient("se-space-manufactory", "low-density-structure")
    util.remove_ingredient("se-space-manufactory", "se-heat-shielding")
    util.remove_ingredient("se-space-manufactory", "electric-engine-unit")
    util.add_ingredient("se-space-manufactory", "heat-resistant-low-density-structure", 88)
    util.add_ingredient("se-space-manufactory", "advanced-electric-motor", 32)

    util.remove_ingredient("se-space-biochemical-laboratory", "electric-engine-unit")
    util.add_ingredient("se-space-biochemical-laboratory", "advanced-electric-motor", 32)

    util.remove_ingredient("se-space-thermodynamics-laboratory", "low-density-structure")
    util.remove_ingredient("se-space-thermodynamics-laboratory", "se-heat-shielding")
    util.add_ingredient("se-space-thermodynamics-laboratory", "heat-resistant-low-density-structure", 120)

    util.remove_ingredient("se-delivery-cannon-capsule", "low-density-structure")
    util.remove_ingredient("se-delivery-cannon-capsule", "se-heat-shielding")
    util.add_ingredient("se-delivery-cannon-capsule", "heat-resistant-low-density-structure", 2)

    util.remove_ingredient("se-cargo-rocket-section", "low-density-structure")
    util.remove_ingredient("se-cargo-rocket-section", "se-heat-shielding")
    util.add_ingredient("se-cargo-rocket-section", "heat-resistant-low-density-structure", 8)

    util.remove_ingredient("se-cargo-rocket-section-beryllium", "low-density-structure")
    util.remove_ingredient("se-cargo-rocket-section-beryllium", "se-heat-shielding")
    util.add_ingredient("se-cargo-rocket-section-beryllium", "heat-resistant-low-density-structure", 8)

    util.remove_ingredient("se-space-capsule", "low-density-structure")
    util.remove_ingredient("se-space-capsule", "se-heat-shielding")
    util.add_ingredient("se-space-capsule", "heat-resistant-low-density-structure", 200)

    util.remove_ingredient("se-space-capsule-refurbish", "low-density-structure")
    util.remove_ingredient("se-space-capsule-refurbish", "se-heat-shielding")
    util.add_ingredient("se-space-capsule-refurbish", "heat-resistant-low-density-structure", 75)

    util.remove_ingredient("se-spaceship-wall", "low-density-structure")
    util.remove_ingredient("se-spaceship-wall", "se-heat-shielding")
    util.add_ingredient("se-spaceship-wall", "heat-resistant-low-density-structure", 8)

    util.remove_ingredient("se-spaceship-antimatter-booster-tank", "low-density-structure")
    util.remove_ingredient("se-spaceship-antimatter-booster-tank", "se-heat-shielding")
    util.add_ingredient("se-spaceship-antimatter-booster-tank", "heat-resistant-low-density-structure", 100)

    util.remove_ingredient("se-space-platform-scaffold", "low-density-structure")
    util.remove_ingredient("se-space-platform-scaffold", "se-heat-shielding")
    util.add_ingredient("se-space-platform-scaffold", "heat-resistant-low-density-structure", 2)

    util.remove_ingredient("se-space-mirror", "low-density-structure")
    util.remove_ingredient("se-space-mirror", "se-heat-shielding")
    util.add_ingredient("se-space-mirror", "heat-resistant-low-density-structure", 2)

    util.remove_ingredient("fusion-reactor-equipment", "low-density-structure")
    util.remove_ingredient("fusion-reactor-equipment", "se-heat-shielding")
    util.add_ingredient("fusion-reactor-equipment", "heat-resistant-low-density-structure", 100)

    util.remove_ingredient("se-delivery-cannon-weapon-capsule", "low-density-structure")
    util.remove_ingredient("se-delivery-cannon-weapon-capsule", "se-heat-shielding")
    util.add_ingredient("se-delivery-cannon-weapon-capsule", "heat-resistant-low-density-structure", 20)

    util.remove_ingredient("se-space-telescope-xray", "low-density-structure")
    util.remove_ingredient("se-space-telescope-xray", "se-heat-shielding")
    util.add_ingredient("se-space-telescope-xray", "heat-resistant-low-density-structure", 65)

    util.remove_ingredient("se-space-telescope-gammaray", "low-density-structure")
    util.remove_ingredient("se-space-telescope-gammaray", "se-heat-shielding")
    util.add_ingredient("se-space-telescope-gammaray", "heat-resistant-low-density-structure", 65)

    util.remove_ingredient("se-space-plasma-generator", "low-density-structure")
    util.remove_ingredient("se-space-plasma-generator", "se-heat-shielding")
    util.add_ingredient("se-space-plasma-generator", "heat-resistant-low-density-structure", 80)

    util.remove_ingredient("se-space-particle-collider", "low-density-structure")
    util.remove_ingredient("se-space-particle-collider", "se-heat-shielding")
    util.add_ingredient("se-space-particle-collider", "heat-resistant-low-density-structure", 140)

    util.remove_ingredient("se-space-particle-accelerator", "low-density-structure")
    util.remove_ingredient("se-space-particle-accelerator", "se-heat-shielding")
    util.add_ingredient("se-space-particle-accelerator", "heat-resistant-low-density-structure", 80)

    util.remove_ingredient("se-antimatter-reactor", "low-density-structure")
    util.remove_ingredient("se-antimatter-reactor", "se-heat-shielding")
    util.add_ingredient("se-antimatter-reactor", "heat-resistant-low-density-structure", 1000)

    util.remove_ingredient("se-space-radiation-laboratory", "low-density-structure")
    util.remove_ingredient("se-space-radiation-laboratory", "se-heat-shielding")
    util.add_ingredient("se-space-radiation-laboratory", "heat-resistant-low-density-structure", 80)

    util.remove_ingredient("se-space-pipe-to-ground", "lead-plate")
    util.remove_ingredient("se-space-pipe-to-ground", "tin-plate")
    util.add_ingredient("se-space-pipe-to-ground", "indium-solder", 1)

    util.remove_ingredient("se-space-radiator", "steel-plate")
    util.remove_ingredient("se-space-radiator", "cuw")
    util.add_ingredient("se-space-radiator", "heat-resistant-low-density-structure", 20)

    util.add_ingredient("se-corrosion-resistance-data", "stainless-steel-plate", 1)
    util.set_ingredient("se-corrosion-resistance-data", "se-empty-data", 2)
    util.set_product_amount("se-corrosion-resistance-data", "se-corrosion-resistance-data", 2)

    util.add_ingredient("se-friction-data", "air-bearing", 1)
    util.set_ingredient("se-friction-data", "se-empty-data", 2)
    util.set_product_amount("se-friction-data", "se-friction-data", 2)

    util.add_ingredient("se-hot-thermodynamics-data","chromel-r-fabric", 1)

    util.add_ingredient("se-heavy-composite","inconel-718", 6)
    util.set_ingredient("se-heavy-composite", "se-iridium-plate", 10)
end