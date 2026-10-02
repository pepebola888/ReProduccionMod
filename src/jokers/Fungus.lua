SMODS.Joker {
    key = "fungus",
    atlas = "jokers",
    pos = {
        x = 1,
        y = 0
    },
    config = {
        unlocked = true,
        discovered = true,
        extra = {
            xmult = 1.2
        }
    },
    rarity = 2,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
            }
        }
    end,

    calculate = function(self, card, context)

        local Suits = {
            ["repro_PepeSuit"] = true,
            ["repro_CarlizSuit"] = true,
            ["repro_FurSuit"] = true,
            ["repro_PinwinSuit"] = true
        }

        if context.cardarea == G.play and context.individual then
            if Suits[context.other_card.base.suit] then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end
}

Add_to_pool("j_repro_fungus", Idiot_joker_pool)