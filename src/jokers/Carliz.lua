SMODS.Joker {
    key = "carliz",
    atlas = "jokers",
    pos = {
        x = 3,
        y = 0
    },
    config = {
        unlocked = true,
        discovered = true,
        extra = {
            repetitions = 2
        }
    },
    rarity = 2,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.repetitions
            }
        }
    end,

    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            if context.other_card:is_suit("repro_CarlizSuit", true) then
                return {
                    message = "mhm",
                    repetitions = card.ability.extra.repetitions*2,
                    card = card
                    
                }
            end
            if context.other_card:is_suit("Spades", true) or
            context.other_card:is_suit("Clubs", true)
            then
                return {
                    message = "mhm",
                    repetitions = card.ability.extra.repetitions,
                    card = card
                    
                }
            end
        end
    end
}

Add_to_pool("j_repro_carliz", Idiot_joker_pool)