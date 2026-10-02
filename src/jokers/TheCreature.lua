SMODS.Joker {
    key = "the_creature",
    atlas = "jokers",
    soul_pos = {
        x = 4,
        y = 2
    },
    pos = {
        x = 5,
        y = 2
    },
    config = {
        unlocked = true,
        discovered = true,
        is_animal = true,
        extra = {
            chip_mult = 0.5
        }
    },
    rarity = 4,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chip_mult,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.setting_blind and G.GAME.blind and G.GAME.blind.chips then
            
            G.GAME.blind.chips = G.GAME.blind.chips * card.ability.extra.chip_mult

            return {
                message = "Blind Damaged!!!",
                colour = G.C.CHIPS,
                card = card,
                sound = "repro_LobotomySound"
            }
        end
    end
}

Add_to_pool("j_repro_the_creature", Animal_joker_pool)