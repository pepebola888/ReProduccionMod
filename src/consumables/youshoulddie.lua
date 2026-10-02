SMODS.Consumable {
    key = "youshoulddie",
    set = "Tarot",
    atlas = "consumables",
    pos = {
        x = 1,
        y = 0
    },

    config = {
        extra = {
            maxcards = 3
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = {
            card.ability.extra.max_highlighted
        } }
    end,

    can_use = function(self, card)
        return G.hand and #G.hand.highlighted <= card.ability.extra.maxcards and #G.hand.highlighted > 0
    end,
    use = function(self, card, area, copier)
        local destroyed_cards = {}
        for i = 1, #G.hand.highlighted do
            destroyed_cards[#destroyed_cards + 1] = G.hand.highlighted[i]
        end

        -- 2. Trigger the destroy animation and logic
        -- This automatically handles removing them from the hand array
        SMODS.destroy_cards(destroyed_cards)
    end
}

Add_to_pool("c_repro_youshoulddie", Cool_consumables_pool)