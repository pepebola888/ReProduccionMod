SMODS.Consumable {
    key = "linguine_upgrader",
    set = "Tarot",
    atlas = "jokers",
    pos = {
        x = 7,
        y = 1
    },
    
    cost = 0,

    config = {
        unlocked = true,
        discovered = true,
        extra = {
            upgrade_cost = 10,
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.upgrade_cost,
            }
        }
    end,

    can_use = function(self, card)
        if G.jokers and #G.jokers.highlighted == 1 then
            local SelectedJoker = G.jokers.highlighted[1]
            if SelectedJoker.config.center.key == 'j_repro_linguine' then
                return true
            end
        end
        return false
    end,

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'immediate',
            func = function()
                local SelectedJoker = G.jokers.highlighted[1]
                SelectedJoker.ability.extra.upgrade = SelectedJoker.ability.extra.upgrade + 1
                ease_dollars(-self.config.extra.upgrade_cost)
                return true
            end
        }))
    end
}