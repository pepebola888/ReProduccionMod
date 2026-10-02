SMODS.Consumable {
    key = "adiosadiosnopasesnopases",
    set = "Tarot",
    atlas = "consumables",
    pos = {
        x = 0,
        y = 0
    },


    can_use = function(self, card)
        return G.jokers and #G.jokers.highlighted == 1
    end,
    use = function(self, card, area, copier)
        local SelectedJoker = G.jokers.highlighted[1]
         SelectedJoker:set_edition({ negative = true }, true)
    end
}

Add_to_pool("c_repro_adiosadiosnopasesnopases", Cool_consumables_pool)