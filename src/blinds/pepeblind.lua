SMODS.Blind {
    key = "pepe_domain",
    atlas = "blinds",
    pos = {
        x = 0,
        y = 0
    },
    boss = {min = 2, max = 67},
    boss_colour = HEX("FFFF00"),
    unskippable = true,

    debuff_card = function(self, card, from_blind)

        local debuffed_cards = {
            ["repro_PepeSuit"] = true,
            ["repro_CarlizSuit"] = true,
            ["repro_FurSuit"] = true,
            ["repro_PinwinSuit"] = true
        }

        if debuffed_cards[card.base.suit] or card.ability.set == "Joker" then
            return false
        end

        return true
    end,

    calculate = function (self, blind, context)
        
    end
}