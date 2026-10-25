SMODS.Joker {
    key = "pepe",
    atlas = "jokers",
    pos = {
        x = 0,
        y = 0
    },

    config = {
        unlocked = true,
        discovered = true,
        extra = {
            retriggers = 2,
            probability = 3
        }
    },
    rarity = 2,
    cost = 15,

    blueprint_compat = true,

    loc_vars = function(self, info_queue, card)

                table.insert(info_queue, { key = 'repro_idiot_joker_desc', set = 'Other' })

        return {
            vars = {
                card.ability.extra.retriggers,
                G.GAME.probabilities.normal,
                card.ability.extra.probability,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.Jokers and not context.blueprint and context.other_card ~= card and math.random(G.GAME.probabilities.normal, card.ability.extra.probability) then
            return {
                repetitions = card.ability.extra.retriggers,
                card = context.other_card,
            }
        end
    end
}

Add_to_pool("j_repro_pepe", Idiot_joker_pool, true)