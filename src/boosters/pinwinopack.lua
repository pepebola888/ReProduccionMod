SMODS.Booster {
    key = "pinwinobooster",
    atlas = "boosters",
    pos = {
        x = 2,
        y = 0
    },
    config = {
        choose = 2,
        extra = 5,

    },
    cost = 6.7,
    group_key = "repro_pinwinbooster",
    weight = 4,
    draw_hand = true,
    kind = "Tarot",
    create_card = function(self, card)
        local Consumables = {}
        for ConsumableKey, whatthesigma in pairs(Cool_consumables_pool) do
            table.insert(Consumables, ConsumableKey)
        end

        local chosen_key = pseudorandom_element(Consumables, pseudoseed("pinwinobooster"))

        return create_card('Tarot', G.pack_cards, nil, nil, nil, nil, chosen_key)
    end,
}