SMODS.Joker {
    key = "pinwin",
    atlas = "jokers",
    pos = {
        x = 2,
        y = 0
    },
    config = {
        unlocked = true,
        discovered = true,
        extra = {
            chips = 50,
            xmult = 1.5,
        }
    },
    rarity = 2,
    cost = 10,

    blueprint_compat = true,

    loc_vars = function(self, info_queue, card)
                table.insert(info_queue, { key = 'repro_idiot_joker_desc', set = 'Other' })

        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.xmult,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            local ValidJokers = 0
            for i, Joker in ipairs(G.jokers.cards) do
                if Idiot_joker_pool[Joker.config.center.key] then
                    ValidJokers = ValidJokers+1
                end
            end
            return {
                chips = card.ability.extra.chips * ValidJokers,
                xmult = card.ability.extra.xmult * ValidJokers
            }
        end
    end
}

Add_to_pool("j_repro_pinwin", Idiot_joker_pool, true)