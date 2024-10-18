mode = settings.startup["sasp-nostalgia-mode"]
list = {}
if mode and mode.value and mods["space-age"] then
    list = {
        "metallurgic-science-pack",
        "electromagnetic-science-pack",
        "cryogenic-science-pack",
        "promethium-science-pack",
        "agricultural-science-pack"
    }
else
    list = {
        "military-science-pack",
        "automation-science-pack",
        "chemical-science-pack",
        "space-science-pack",
        "logistic-science-pack",
        "utility-science-pack",
        "production-science-pack"
    }
end

for _, pack in pairs(list) do
    data.raw["tool"][pack].icon = "__sa-science-packs__/graphics/items/sasp-" .. pack .. ".png"
	data.raw["technology"][pack].icon = "__sa-science-packs__/graphics/techs/sasp-" .. pack .. ".png"
end

---removing icon field from space science recipe, since its left in the recipe doesnt display the new graphic
data.raw["recipe"]["space-science-pack"].icon = nil