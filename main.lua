-- other bullshit

Animal_joker_pool = {}
Idiot_joker_pool = {}
Object_joker_pool = {}
Cool_consumables_pool = {}

All_jokers_pool = {}

function Add_to_pool(key, pool, isJoker)
    pool[key] = true
    if isJoker then
        All_jokers_pool[key] = true
    end
end


function Has_joker(joker_key)
        if not G.jokers or not G.jokers.cards then
        return false
    end
    for _, joker in ipairs(G.jokers.cards) do
        if joker.config.center.key == joker_key then
            return true
        end
    end

    return false
end

function Has_consumable(consumable_key)
    if not G.consumeables or not G.consumeables.cards then
        return false
    end
    for _, consumable in ipairs(G.consumeables.cards) do
        if consumable.config.center.key == consumable_key then
            return true
        end
    end

    return false
end

SMODS.current_mod.optional_features = {
    retrigger_joker = true
}

SMODS.Sound {
    key = "PunchSound",
    path = "punch.ogg"
}
SMODS.Sound {
    key = "LobotomySound",
    path = "lobotomity.wav"
}

-- creating atlaseses

SMODS.Atlas {
    key = "jokers",
    path = "jokers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "consumables",
    path = "consumables.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "boosters",
    path = "boosterpacks.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "blinds",
    path = "blinds.png",
    px = 34,
    py = 34
}

SMODS.Atlas {
    key = "oddcards",
    path = "oddcards.png",
    px = 71,
    py = 95
}

assert(SMODS.load_file("src/Suits.lua"))()

-- loading custom jokers funny jokers jokeys
local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path.. "src/jokers")
for _, file in pairs(jokers_src) do
    assert(SMODS.load_file("src/jokers/".. file))()
end

-- loading consumablies
local consumables_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path.. "src/consumables")
for _, file in pairs(consumables_src) do
    assert(SMODS.load_file("src/consumables/".. file))()
end

-- loading booster packs
local boosters_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path.. "src/boosters")
for _, file in pairs(boosters_src) do
    assert(SMODS.load_file("src/boosters/".. file))()
end

-- loading the deafs i mean blinds
local blinds_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path.. "src/blinds")
for _, file in pairs(blinds_src) do
    assert(SMODS.load_file("src/blinds/".. file))()
end