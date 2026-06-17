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
            j_jkzb_sample_obelisk = {
                name = "Sample Obelisk",
                text = {
                    {
                        "This Joker gives {X:mult,C:white} X#1# {} Mult",
                        "for each time you've played this {C:attention}hand",
                    }
                },
            },
            j_jkzb_sample_specifichand = {
                name = "Sample Specific Hand",
                text = {
                    {
                        "If the hand played is #1#,",
                        "Gives {X:mult,C:white} X#2# {} Mult"
                    }
                },
            },
            j_jkzb_sample_money = {
                name = "Sample Money",
                text = {
                    {
                        "Earn (Ante x 2) {C:money}${} at",
                        "end of round, also here's some text effects:",
                        "{C:money} money{}, {C:chips} chips{}, {C:mult} mult{}, {C:red} red{}, {C:blue} blue{}, {C:green} green{}",
                        "{C:attention} attention{}, {C:purple} purple{}, {C:inactive} inactive{}",
                        "{C:spades} spades{}, {C:hearts} hearts{}, {C:clubs} clubs{}, {C:diamonds} diamonds{}",
                        "{C:tarot} tarot{}, {C:planet} planet{}, {C:spectral} spectral{}",
                        "{C:edition} edition{}, {C:dark_edition} dark edition{}, {C:legendary} legendary{}, {C:enhanced} enhanced{}",
                    }
                },
            },
            j_jkzb_sample_roomba = {
                name = "Sample Roomba",
                text = {
                    {
                        "Attempts to remove edition",
                        "from another Joker",
                        "at the end of each round",
                        "{C:inactive}(Foil, Holo, Polychrome)"
                    }
                },
            },
            j_jkzb_sample_drunk_juggler = {
                name = "Sample Drunk Juggler",
                text = {
                    {
                        "{C:red}+#1#{} discard,",
                        "also here's some {X:legendary,C:white}text effects{}:",
                        "{s:0.5} scaled down by 0.5",
                        "{C:attention,T:tag_double}#2#",
                    }
                },
            },
            j_jkzb_sample_hackerman = {
                name = "Sample Hackerman",
                text = {
                    {
                        "Retrigger",
                        "each played",
                        "{C:attention}6{}, {C:attention}7{}, {C:attention}8{}, or {C:attention}9{}",
                    }
                },
            },
            j_jkzb_sample_baroness = {
                name = "Sample Baroness",
                text = {
                    {
                        "Each {C:attention}Queen{}",
                        "held in hand",
                        "gives {X:mult,C:white} X#1# {} Mult",
                    }
                },
            },
            j_jkzb_sample_rarebaseballcard = {
                name = "Sample Rare Baseball Card",
                text = {
                    {
                        "{X:mult,C:white}Rare{} Jokers",
                        "each give {X:mult,C:white} X#1# {} Mult",
                    }
                },
            },
            j_jkzb_sample_multieffect = {
                name = "Sample Multi-Effect",
                text = {
                    {
                        "Each played {C:attention}10{}",
                        "gives {C:chips}+#1#{} Chips and",
                        "{C:mult}+#2#{} Mult when scored",
                    }
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
                        'Trebuchet placeholder'
                    }
                },
            },
            j_jkzb_perkalator = {
                name = "Perkalator",
                text = {
                    {
                        'Perkalator placeholder'
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