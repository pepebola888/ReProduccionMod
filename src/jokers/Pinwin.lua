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
            chips = 100,
            xmult = 1.5,
        }
    },
    rarity = 2,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.xmult,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            local BlindType = G.GAME.blind:get_type()
            if BlindType == "Boss" then
                return {
                    xmult = card.ability.extra.xmult
                }
            else
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end
}

Add_to_pool("j_repro_pinwin", Idiot_joker_pool)