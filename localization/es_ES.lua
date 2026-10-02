return {
    descriptions = {
        Blind = {
            bl_repro_pepe_domain = {
                name = "Pepe's Domain",
                text = {
                    "debuffea cartas jugables",
                    "que no sean del mod de re-producción "
                }
            },
        },
        Joker = {
            j_repro_pepe = {
                name = "Pepe Bolas Felices",
                text = {
                    {"tiene una probabilidad de {C:green}2 en 3{}",
                    "(Si es una carta modeada o de figura esto siempre pasara)",
                    "de dar {C:chips}+#1#{} Chips",
                    "y {C:mult}+#2#{} Mult por carta",
                    "pero una probabilidad de {C:attention}1 en 3{} de estar triste",
                    "(si no, estara feliz)"},
                    {
                        "{C:attention}feliz:",
                        "sin effectos negativos"
                    },
                    {
                        "{C:blue}triste:",
                        "{X:mult,C:white}x#3#{} Mult"
                    }
                }
            },
            j_repro_fungus = {
                name = "fungus el furrus",
                text = {
                    "{X:mult,C:white}X#1#{} Mult por carta jugada de este mod"
                }
            },
            j_repro_pinwin = {
                name = "pinwino",
                text = {
                    "{C:chips}+#1#{} chips si la ciega es normal",
                    "{X:mult,C:white}x#2#{} mult si la ciega es especialita",
                }
            },
            j_repro_carliz = {
                name = "carlis el chud",
                text = {
                    "reactiva #1# veces si",
                    "carta jugada es {C:spades}pica{} o {C:clubs}trebol.{}",
                    "si la carta jugada es {C:spades}carliz{} reactiva el doble de veces"

                }
            },
            j_repro_cinnamon = {
                name = "Cinnamon",
                text = {
                    "{C:money}+$#1#{} por cada carta jugada",
                    "{C:attention}+#4#{} usos cuando se selecciona una ciega",
                    "{C:inactive}#2#/#3# usos restantes"
                }
            },
            j_repro_antidog = {
                name = "Perro de Antimateria",
                text = {
                    "{C:attention}+#3#{} ranuras de comodines pero",
                    "tiene una probabilidad de {C:green}1 en #2#{}",
                    "de {C:mult}EXPLOTAR{} por casi cualquier cosa",
                    "{C:inactive}explota al tener 6 de 7 comodines",
                    "{C:inactive}sus efectos solo se aplicaran si tiene dos comodines al lado"
                }
            },
            j_repro_boxing_gloves = {
                name = "Guantes de Boxeo",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Se reactiva a si mismo un maximo de {C:attention}#2#{} veces"
                }
            },
            j_repro_the_creature = {
                name = "La Criatura",
                text = {
                    "multiplica el puntaje requerido de la ciega por {C:attention}#1#",
                }
            },
        },
        Tarot = {
            c_repro_adiosadiosnopasesnopases = {
                name = "adios, adios. no pases, no pases",
                text = {
                    "convierte el joker seleccionado en un {C:dark_edition}negativo{/C}"
                }
            },
            c_repro_youshoulddie = {
                name = "matate carliz",
                text = {
                    "destruye hasta 3 cartas seleccionadas"
                }
            },
        }
    },
    misc = {
        dictionary = {
            repro_pepebooster = "el pack de pepe",
            repro_furrusbooster = "furrus",
            repro_pinwinbooster = "el pack de pinwin"
        }
    }
}