SMODS.Joker {
    key = "pepe",
    atlas = "jokers",
    pos = {
        x = 0,
        y = 0
    },

    config = {
        unlocked = true,
        discovered = true,
        extra = {
            chips = 10,
            mult = 2,
            xmult = 0.9,
        }
    },
    rarity = 2,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.mult,
                card.ability.extra.xmult,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual then
            local Action = math.random(3)
            if Action <= 2 or not (context.other_card:is_face() or context.other_card:is_suit("Club") or context.other_card:is_suit("Spades") or context.other_card:is_suit("Hearts")) or context.other_card:is_suit("Diamonds") then
                return {
                    chips = card.ability.extra.chips,
                    mult = card.ability.extra.mult,
                }
            end
        end
        if context.joker_main then
            local Action = math.random(3)
            if Action == 3 then
                card.children.center.sprite_pos.y = 2
                card.children.center:set_sprite_pos(card.children.center.sprite_pos)
                return {
                    xmult = card.ability.extra.xmult,
                }
            else
                card.children.center.sprite_pos.y = 1
                card.children.center:set_sprite_pos(card.children.center.sprite_pos)
            end
        end
        if context.starting_shop then
            card.children.center.sprite_pos.y = 0
            card.children.center:set_sprite_pos(card.children.center.sprite_pos)
        end
    end
}

Add_to_pool("j_repro_pepe", Idiot_joker_pool)