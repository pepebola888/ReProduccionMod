SMODS.Booster {
    key = "cinnamonbooster",
    atlas = "boosters",
    pos = {
        x = 3,
        y = 0
    },
    config = {
        choose = 1,
        extra = 2,

    },
    cost = 6.7,
    group_key = "repro_cinnamonbooster",
    weight = 4,
    draw_hand = false,
    kind = "Joker",
    create_card = function(self, card, i)

        local Jokers = {}
        for JokerKey, whatthesigma in pairs(All_jokers_pool) do
            table.insert(Jokers, JokerKey)
        end

        local chosen_key = pseudorandom_element(Jokers, pseudoseed("pepebooster"))

        local Joker = create_card('Joker', G.pack_cards, nil, nil, nil, nil, chosen_key)

        local Edition = poll_edition("cinnamonpackedition", nil, true, true)
        if Edition then
            Joker:set_edition(Edition, true)
        end

        return Joker
    end,
}