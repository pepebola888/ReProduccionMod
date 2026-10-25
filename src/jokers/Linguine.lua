SMODS.Joker {
    key = "linguine",
    atlas = "jokers",
    soul_pos = {
        x = 6,
        y = 2
    },
    pos = {
        x = 7,
        y = 2
    },
    config = {
        unlocked = true,
        discovered = true,
        is_animal = true,
        extra = {
            upgrade = 1,
            base_xchips = 1,
            base_xmult = 1,
            upgrade_xchips = 0.25,
            upgrade_xmult = 0.1,
        }
    },
    rarity = 4,
    cost = 10,

    blueprint_compat = true,

    loc_vars = function(self, info_queue, card)

        table.insert(info_queue, { key = 'repro_animal_joker_desc', set = 'Other' })

        return {
            vars = {
                card.ability.extra.upgrade,
                card.ability.extra.base_xchips+(card.ability.extra.upgrade_xchips*card.ability.extra.upgrade),
                card.ability.extra.base_xmult+(card.ability.extra.upgrade_xmult*card.ability.extra.upgrade),
                card.ability.extra.upgrade_xchips,
                card.ability.extra.upgrade_xmult,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xchips = card.ability.extra.base_xchips+(card.ability.extra.upgrade_xchips*card.ability.extra.upgrade),
                xmult = card.ability.extra.base_xmult+(card.ability.extra.upgrade_xmult*card.ability.extra.upgrade),
            }
        end

        if context.starting_shop then 
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.4,
                func = function()
                    local card_type = 'Tarot'
                    local created_card = create_card(card_type, G.consumeables, nil, nil, nil, nil, "c_repro_linguine_upgrader", 'joker_add')
                    G.consumeables:emplace(created_card) 
                    G.consumeables:juice_up()
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer - 1
                    return true
                end
            }))
        end
    end
}

Add_to_pool("j_repro_linguine", Animal_joker_pool, true)