SMODS.Joker {
    key = "boxing_gloves",
    atlas = "jokers",
    pos = {
        x = 4,
        y = 1
    },
    config = {
        unlocked = true,
        discovered = true,
        extra = {
            maxretriggers = 8,
            xmult = 1.2,
        }
    },
    rarity = 2,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.maxretriggers
            }
        }
    end,

    calculate = function(self, card, context)
        local retriggers = math.random(0, card.ability.extra.maxretriggers)

        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
                card = card,
            }
        end

        if context.retrigger_joker_check and not context.retrigger_joker then
            if context.other_card == card then
                return {
                    repetitions = retriggers,
                    card = card,
                    sound = "repro_PunchSound"
                }
            end
        end
    end
}
