SMODS.Joker {
    key = "completo",
    atlas = "jokers",
    pos = {
        x = 6,
        y = 1
    },
    config = {
        unlocked = true,
        discovered = true,
        extra = {
            dollars = 5,
            xchips = 1.2,
            xmult = 3,
            maxuses = 20,
            uses = 20
        }
    },
    rarity = 2,
    cost = 10,

    blueprint_compat = true,

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.dollars,
                card.ability.extra.xchips,
                card.ability.extra.xmult,
                card.ability.extra.uses,
                card.ability.extra.maxuses,
            }
        }
    end,

    calculate = function(self, card, context)

        if context.buying_card and context.card == card then
            card.ability.extra_value = 0
            card:set_cost()
        end

        if context.joker_main and not context.blueprint then
            if card.ability.extra.uses <= 0 then
                card:start_dissolve()
            end

            if not context.blueprint then
                card.ability.extra.uses = card.ability.extra.uses - 1
            end

            return {
                dollars = card.ability.extra.dollars,
                xchips = card.ability.extra.xchips,
                xmult = card.ability.extra.xmult
            }
        end
    end
}

Add_to_pool("j_repro_completo", Object_joker_pool, true)