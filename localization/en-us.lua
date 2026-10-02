return {
    descriptions = {
        Blind = {
            bl_repro_pepe_domain = {
                name = "Pepe's Domain",
                text = {
                    "debuffs any playing card",
                    " that isn't from the re-production mod"
                }
            },
        },
        Joker = {
            j_repro_pepe = {
                name = "Pepe Bolas Felices",
                text = {
                    {"has a {C:green}2 in 3{} chance",
                    "(if it is a modded or face playing card this will always happen)",
                    "to give {C:chips}+#1#{} Chips",
                    "and {C:mult}+#2#{} Mult per card",
                    "but a {C:attention}1 in 3{} chance to be sad",
                    "(otherwhise, he'll be happy)"},
                    {
                        "{C:attention}Happy:",
                        "no debuffs"
                    },
                    {
                        "{C:blue}Sad:",
                        "{X:mult,C:white}x#3#{} Mult"
                    }
                }
            },
            j_repro_fungus = {
                name = "fungus el furrus",
                text = {
                    "{X:mult,C:white}X#1#{} Mult per scored card from this mod",
                }
            },
            j_repro_pinwin = {
                name = "pinwino",
                text = {
                    "{C:chips}+#1#{} chips if current blind is normal",
                    "{X:mult,C:white}x#2#{} mult if current blind is a boss",
                }
            },
            j_repro_carliz = {
                name = "carlis",
                text = {
                    "scored card retriggers #1# times if",
                    "it's either {C:spades}spades{} or {C:clubs}clubs.{}",
                    "if scored card is {C:spades}carliz{} then retriggers 2 more times"
                }
            },
            j_repro_cinnamon = {
                name = "Cinnamon",
                text = {
                    "{C:money}+$#1#{} for every scored card",
                    "{C:attention}+#4#{} uses when selecting blind",
                    "{C:inactive}#2#/#3# uses left"
                }
            },
            j_repro_antidog = {
                name = "Antimatter Dog",
                text = {
                    "Adds {C:attention}+#3#{} joker slots but",
                    "Has a {C:green}1 in #2#{} chance",
                    "To {C:mult}EXPLODE{} for like almost everything",
                    "{C:inactive}side effect include:",
                    "{C:inactive}immediate explosion upon having 6 out of 7 jokers",
                    "{C:inactive}effects wont apply if it is the leftmost or rightmost joker"
                }
            },
            j_repro_boxing_gloves = {
                name = "Boxing Gloves",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Retriggers itself a maximum of {C:attention}#2#{} times"
                }
            },
            j_repro_the_creature = {
                name = "The Creature",
                text = {
                    "multiplies the blind's required score by {C:attention}#1#",
                }
            },
        },
        Tarot = {
            c_repro_adiosadiosnopasesnopases = {
                name = "adios, adios. no pases, no pases",
                text = {
                    "converts selected joker into a {C:dark_edition}negative{/C}"
                }
            },
            c_repro_youshoulddie = {
                name = "you should die, now!!!",
                text = {
                    "destroys up to 3 selected cards"
                }
            },
        }
    },
    misc = {
        dictionary = {
            repro_pepebooster = "pepe's pack",
            repro_furrusbooster = "furrus",
            repro_pinwinbooster = "pinwin's pack",
        }
    }
}