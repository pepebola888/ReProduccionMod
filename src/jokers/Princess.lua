SMODS.Joker {
    key = "princess",
    atlas = "jokers",
    pos = {
        x = 5,
        y = 0
    },
    soul_pos = {
        x = 6,
        y = 0
    },
    config = {
        unlocked = true,
        discovered = true,
        is_animal = true,
        extra = {
            xmult = 2
        }
    },
    rarity = 4,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            local ValidJokers = 0
            for i, Joker in ipairs(G.jokers.cards) do
                if Animal_joker_pool[Joker.config.center.key] then
                    ValidJokers = ValidJokers+1
                end
            end
            return {
                xmult = card.ability.extra.xmult * ValidJokers
            }
        end
        
    end
}

Add_to_pool("j_repro_princess", Animal_joker_pool)