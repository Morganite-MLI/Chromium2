local util = require("data-util")


if mods["IfNickel-Updated"] and data.raw["nitinol-plate"] then
    util.replace_ingredient("nitinol-plate", "nickel-plate", "chromel-r-fabric")

    if mods["space-exploration"]  then
        util.add_prerequisite("se-rocket-launch-pad", "nitinol-processing")
    end
end

if mods["BrassTacks-Updated"] then
    util.remove_ingredient("steam-turbine", "bearing")
end

if mods["Krastorio2"] then
    util.remove_ingredient("assembling-machine-3", "steel-gear-wheel")
    --not very nice but it works
    if mods["BrassTacks-Updated"] and "advanced-gearbox" then
        util.remove_ingredient("assembling-machine-3", "concrete")
        util.replace_ingredient("assembling-machine-3", mods["BrassTacks-Updated"] and "complex-joint", "concrete", 8)
        util.replace_ingredient("assembling-machine-3", mods["BrassTacks-Updated"] and "advanced-gearbox", "advanced-electric-motor", 4)
    else
        util.add_ingredient("assembling-machine-3", "advanced-electric-motor", 4)
    end

    if mods["IfNickel-Updated"] and "advanced-machining-tool" then
        util.replace_ingredient("assembling-machine-3", mods["IfNickel-Updated"] and "advanced-machining-tool", "automation-core-3", 2)
    else
        util.add_ingredient("assembling-machine-3", "automation-core-3", 2)
    end

    if mods["ThemTharHills-Updated"] then
        util.remove_ingredient("assembling-machine-3", "hv-power-regulator")
    end

    if mods["space-exploration"] then
        util.add_ingredient("se-space-assembling-machine", "automation-core-3", 2)
        util.remove_ingredient("se-space-assembling-machine", mods["BrassTacks-Updated"] and "advanced-gearbox")
        util.remove_ingredient("se-space-assembling-machine", mods["IfNickel-Updated"] and "advanced-machining-tool")
        util.remove_ingredient("se-space-assembling-machine", mods["BrassTacks-Updated"] and "complex-joint")
    end
end