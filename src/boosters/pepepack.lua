SMODS.Booster {
    key = "pepebooster",
    atlas = "boosters",
    pos = {
        x = 0,
        y = 0
    },
    config = {
        choose = 1,
        extra = 2,

    },
    cost = 6.7,
    group_key = "repro_pepebooster",
    weight = 4,
    draw_hand = false,
    kind = "Joker",
    create_card = function(self, card)

        local Jokers = {}
        for JokerKey, whatthesigma in pairs(Idiot_joker_pool) do
            table.insert(Jokers, JokerKey)
        end

        local chosen_key = pseudorandom_element(Jokers, pseudoseed("pepebooster"))

        return create_card('Joker', G.pack_cards, nil, nil, nil, nil, chosen_key)
    end,
}