return {
    descriptions = {
        Joker = {
            j_jkzb_sample_wee = {
                name = "Sample Wee",
                text = {
                    "This Joker gains",
                    "{C:chips}+#2#{} Chips when each",
                    "played {C:attention}2{} is scored",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                },
            },
            j_jkzb_jester = {
                name = "Jester",
                text = {
                    {
                        "{C:chips}+#1#{} Chips",--only says +chips
                    }
                },
            },
            j_jkzb_clown = {
                name = "Clown",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult", --only says Xmult
                    }
                },
            },
            j_jkzb_gambler = {
                name = "Gambler",
                text = {
                    {
                        "1 in 4 chance for" ,
                        "{X:mult,C:white}X#1#{} Mult",
                    }
                },
            },
            j_jkzb_ethan = {
                name = "Ethan",
                text = {
                    {
                        "{C:mult}+#1#{} Mult", --only says +mult
                    }
                },
            },
            j_jkzb_whiteboard = {
                name = "Whiteboard",
                text = {
                    {
                        "{X:mult,C:white} X#1# {} Mult if all cards",
                        "held in hand are",
                        "{C:hearts}Hearts{} and/or {C:diamonds}Diamonds{}",
                    }
                },
            },
            j_jkzb_glutton = {
                name = "Glutton",
                text = {
                    {
                        'When {C:attention}Blind{} is selected, eat one Food Joker ',
                        'and permanently add',
                        '{C:red}+10 Mult{}',
                        '{C:inactive}(Currently{} {C:red}+#1#{} {C:inactive}Mult){}',
                        '{C:red}-1{} Joker slots'
                    }
                },
            },
            j_jkzb_trebuchet = {
                name = "Trebuchet",
                text = {
                    {
                        "Played {C:attention}2s{} and {C:attention}3s{}",
                        "gives {X:mult,C:white}X#1#{} Mult when scored",
                    }
                },
            },
            j_jkzb_perkalator = {
                name = "Perkalator",
                text = {
                    {
                        "3 in 4 chance to create a copy of a random consumable"
                    }
                },
            },
            j_jkzb_yolk = {
                name = "Yolk",
                text = {
                    {
                        'Yolk placeholder'
                    }
                },
            },
        }
    },
    misc = {

            -- do note that when using messages such as: 
            -- message = localize{type='variable',key='a_xmult',vars={current_xmult}},
            -- that the key 'a_xmult' will use provided values from vars={} in that order to replace #1#, #2# etc... in the localization file.


        dictionary = {
            a_chips="+#1#",
            a_chips_minus="-#1#",
            a_hands="+#1# Hands",
            a_handsize="+#1# Hand Size",
            a_handsize_minus="-#1# Hand Size",
            a_mult="+#1# Mult",
            a_mult_minus="-#1# Mult",
            a_remaining="#1# Remaining",
            a_sold_tally="#1#/#2# Sold",
            a_xmult="X#1# Mult",
            a_xmult_minus="-X#1# Mult",
        }
    }
}