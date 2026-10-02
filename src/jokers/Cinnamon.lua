SMODS.Joker {
    key = "cinnamon",
    atlas = "jokers",
    pos = {
        x = 4,
        y = 0
    },
    config = {
        unlocked = true,
        discovered = true,
        extra = {
            dollars = 5,
            maxuses = 20,
            adduses = 3,
            uses = 20
        }
    },
    rarity = 2,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.dollars,
                card.ability.extra.uses,
                card.ability.extra.maxuses,
                card.ability.extra.adduses
            }
        }
    end,

    calculate = function(self, card, context)

        if context.blind then
            card.ability.extra.uses = card.ability.extra.uses + card.ability.extra.adduses
            if card.ability.extra.uses > card.ability.extra.maxuses then
                card.ability.extra.uses = card.ability.extra.maxuses
            end
        end

        if context.buying_card and context.card == card then
            card.ability.extra_value = 0
            card:set_cost()
        end

        if context.cardarea == G.play and context.individual then
            if card.ability.extra.uses <= 0 then
                card:start_dissolve()
            end

            if not context.blueprint then
                card.ability.extra.uses = card.ability.extra.uses - 1
            end

            return {
                dollars = card.ability.extra.dollars
            }
        end
    end
}

Add_to_pool("j_repro_cinnamon", Idiot_joker_pool)