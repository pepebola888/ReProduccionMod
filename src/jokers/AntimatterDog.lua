SMODS.Joker {
    key = "antidog",
    atlas = "jokers",
    pos = {
        x = 3,
        y = 1
    },
    config = {
        unlocked = true,
        discovered = true,
        is_animal = true,
        extra = {
            xmult = 2,
            xplodeability = 50,
            slots = 2,
        }
    },
    rarity = 2,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.xplodeability,
                card.ability.extra.slots,
            }
        }
    end,

    add_to_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
    end,
    
    remove_from_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
    end,

    calculate = function(self, card, context)
        local Action = math.random(1, card.ability.extra.xplodeability)
        
        local action_occurred = context.joker_main
            or context.discard
            or context.buying_card
            or context.open_booster
            or context.reroll_shop
            or context.skip_blind
            or context.setting_blind
            or context.beat_boss

        if action_occurred then
            local joker_index = nil
            for i, joker in ipairs(G.jokers.cards) do
                if joker == card then
                    joker_index = i
                    break
                end
            end

            if joker_index == 1 or joker_index == #G.jokers.cards then
                if context.joker_main then
                    if joker_index ~= 1 then G.jokers.cards[joker_index-1]:shatter() end
                    if joker_index ~= #G.jokers.cards then G.jokers.cards[joker_index+1]:shatter() end
                    card:shatter()
                    --G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
                end
            else
                if Action == 1 or (G.jokers.config.card_count == 6 and G.jokers.config.card_limit == 7)  then
                    G.jokers.cards[joker_index-1]:shatter()
                    G.jokers.cards[joker_index+1]:shatter()
                    card:shatter()
                    --G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
                end
            end
        end
    end
}

Add_to_pool("j_repro_antidog", Animal_joker_pool)