-- locales.lua
local _, addon = ...
addon.L = {}

local locale = GetLocale()
local L = addon.L

-- === Traductions Français ===
if locale == "frFR" then
    L.LANG_NAME = "Français"
    L.REPAIR_PERSONAL = function(cost)
        return "Équipement réparé pour " .. cost
    end
    L.SELL_JUNK = function(gold)
        return "Objets gris vendus pour " .. gold
    end

-- === Traductions Allemand ===
elseif locale == "deDE" then
    L.LANG_NAME = "Deutsch"
    L.REPAIR_PERSONAL = function(cost)
        return "Ausrüstung repariert für " .. cost
    end
    L.SELL_JUNK = function(gold)
        return "Graue Gegenstände verkauft für " .. gold
    end
	
-- === Translator into Russian ZamestoTV ===
elseif locale == "ruRU" then
    L.LANG_NAME = "Russian"
    L.REPAIR_PERSONAL = function(cost)
        return "Экипировка отремонтирована за " .. cost
    end
    L.SELL_JUNK = function(gold)
        return "Серые предметы проданы за " .. gold
    end	

-- === Par défaut (Anglais) ===
else
    L.LANG_NAME = "English"
    L.REPAIR_PERSONAL = function(cost)
        return "Gear repaired for " .. cost
    end
    L.SELL_JUNK = function(gold)
        return "Gray items sold for " .. gold
    end
end
