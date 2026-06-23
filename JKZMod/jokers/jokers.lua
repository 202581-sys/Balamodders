
-- you can have shared helper functions
function shakecard(self) --visually shake a card
    G.E_MANAGER:add_event(Event({
        func = function()
            self:juice_up(0.5, 0.5)
            return true
        end
    }))
end

function return_JokerValues() -- not used, just here to demonstrate how you could return values from a joker
    if context.joker_main and context.cardarea == G.jokers then
        return {
            chips = card.ability.extra.chips,       -- these are the 3 possible scoring effects any joker can return.
            mult = card.ability.extra.mult,         -- adds mult (+)
            x_mult = card.ability.extra.x_mult,     -- multiplies existing mult (*)
            card = self,                            -- under which card to show the message
            colour = G.C.CHIPS,                     -- colour of the message, Balatro has some predefined colours, (Balatro/globals.lua)
            message = localize('k_upgrade_ex'),     -- this is the message that will be shown under the card when it triggers.
            extra = { focus = self, message = localize('k_upgrade_ex') }, -- another way to show messages, not sure what's the difference.
        }
    end
end
--[[the atlas points to the image of the joker. The real game has only 
one file for all the jokers, but we made  them individual]]
SMODS.Atlas({  
    key = "sample_wee",
    path = "j_sample_wee.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "clown",
    path = "j_clown.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "jester",
    path = "j_jester.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "gambler",
    path = "j_gambler.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "glutton",
    path = "j_glutton.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "ethan",
    path = "j_ethan.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "whiteboard",
    path = "j_whiteboard.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "trebuchet",
    path = "j_trebuchet.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "perkalator",
    path = "j_perkalator.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "yolk",
    path = "j_yolk.png",
    px = 71,
    py = 95
})
SMODS.Atlas({
    key = "chick",
    path = "j_chick.png",
    px = 71,
    py = 95
})


SMODS.Joker{
    key = "sample_wee",                                     --name used by the joker.    
    config = { extra = { chips = 8, chip_mod = 2 } },       --variables used for abilities and effects.
    pos = { x = 0, y = 0 },                                 --pos in spritesheet 0,0 for single sprites or the first sprite in the spritesheet.
    rarity = 1,                                             --rarity 1=common, 2=uncommen, 3=rare, 4=legendary
    cost = 1,                                               --cost to buy the joker in shops.
    blueprint_compat=true,                                  --does joker work with blueprint.
    eternal_compat=true,                                    --can joker be eternal.
    unlocked = true,                                        --is joker unlocked by default.
    discovered = true,                                      --is joker discovered by default.    
    effect=nil,                                             --you can specify an effect here eg. 'Mult'
    soul_pos=nil,                                           --pos of a soul sprite.
    atlas = 'sample_wee',                                   --atlas name, single sprites are deprecated.

    calculate = function(self,card,context)                 --define calculate functions here
        if context.individual and context.cardarea == G.play then -- if we are in card scoring phase, and we are on individual cards
            if not context.blueprint then                   -- blueprint/brainstorm don't get to add chips to themselves
                if context.other_card:get_id() == 2 then    -- played card is a 2 by rank
                    card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod -- add configurable amount of chips to joker
                    
                    return {                                -- shows a message under the specified card (card) when it triggers, k_upgrade_ex is a key in the localization files of Balatro
                        extra = {focus = card, message = localize('k_upgrade_ex')},
                        card = card,
                        colour = G.C.CHIPS
                    }
                end
            end
        end
        if context.joker_main and context.cardarea == G.jokers then
            return {                                        -- returns total chips from joker to be used in scoring, no need to show message in joker_main phase, game does it for us.
                chips = card.ability.extra.chips, 
                colour = G.C.CHIPS
            }
        end
    end,

    loc_vars = function(self, info_queue, card)             --defines variables to use in the UI. you can use #1# for example to show the chips variable
        return { vars = { card.ability.extra.chips, card.ability.extra.chip_mod }, key = self.key }
    end
}

SMODS.Joker{
    key = "jester",                         
    config = { extra = { chips = 50 } },    
    pos = { x = 0, y = 0 },                 
    rarity = 1,                             
    cost = 4,                               
    blueprint_compat=true,                  
    eternal_compat=true,                    
    unlocked = true,                        
    discovered = true,                      
    effect=nil,                             
    soul_pos=nil,                           
    atlas = 'jester',                       

    calculate = function(self,card,context) 
        if context.joker_main and context.cardarea == G.jokers then
            return {                                     
                chips = card.ability.extra.chips, 
                colour = G.C.CHIPS
            }
        end
    end,

    loc_vars = function(self, info_queue, card)          
        return { vars = { card.ability.extra.chips }, key = self.key }
    end
}

SMODS.Joker{
    key = "clown",                            
    config = { extra = { x_mult = 1.2 } },    
    pos = { x = 0, y = 0 },                   
    rarity = 1,                               
    cost = 2,                                 
    blueprint_compat=true,                    
    eternal_compat=true,                      
    unlocked = true,                          
    discovered = true,                        
    effect=nil,                               
    soul_pos=nil,                             
    atlas = 'clown',                          

    calculate = function(self,card,context)   
        if context.joker_main and context.cardarea == G.jokers then
            return {                                    
                x_mult = card.ability.extra.x_mult, 
                colour = G.C.RED
            }
        end
    end,

    loc_vars = function(self, info_queue, card)          
        return { vars = { card.ability.extra.x_mult } }
    end
}

SMODS.Joker{
    key = "gambler",
    config = { extra = { x_mult = 4 } },
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 2,
    blueprint_compat=true,
    eternal_compat=true,
    unlocked = true,
    discovered = true,
    effect=nil,
    soul_pos=nil,
    atlas = 'gambler',

    calculate = function(self,card,context)   
        if context.joker_main and context.cardarea == G.jokers then
            if  pseudorandom('jkzb_gambler_joker')< G.GAME.probabilities.normal/4 then --randomizes 1/4 chance
            return {
                x_mult = card.ability.extra.x_mult, 
                colour = G.C.RED
            }
        else
            return {
                message = "Aw Dang It!" ,
                colour = G.C.FILTER
            }
        end
        end
    end,

    loc_vars = function(self, info_queue, card)          
        return { vars = { card.ability.extra.x_mult, G.GAME.probabilities.normal } }
    end
}

SMODS.Joker{
    key = "ethan",                         
    config = { extra = { mult = 500 } },   
    pos = { x = 0, y = 0 },                
    rarity = 3,                            
    cost = 15,                             
    blueprint_compat=true,                 
    eternal_compat=true,                   
    unlocked = true,                       
    discovered = true,                     
    effect=nil,                            
    soul_pos=nil,                          
    atlas = 'ethan',                       

    calculate = function(self,card,context)              
        if context.joker_main and context.cardarea == G.jokers then
            return {                                    
                mult = card.ability.extra.mult,
                colour = G.C.RED
            }
        end
    end,

    loc_vars = function(self, info_queue, card)          
        return { vars = { card.ability.extra.mult }, key = self.key }
    end
}

SMODS.Joker{
    key = "whiteboard",
    config = { extra = { x_mult = 3 } },
    pos = { x = 0, y = 0 },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'whiteboard',

    calculate = function(self, card, context)
        if context.joker_main then
            if #G.hand.cards == 0 then return end

            local valid = true

            for _, held_card in ipairs(G.hand.cards) do
                local suit = held_card.base.suit

                if suit ~= 'Hearts' and suit ~= 'Diamonds' then
                    valid = false
                    break
                end
            end

            if valid then
                return {
                    x_mult = card.ability.extra.x_mult,
                    colour = G.C.RED
                }
            end
        end
    end,
    
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult } }
    end
}

SMODS.Joker{
    key = "glutton",
    config={ extra = { mult = 0, extra_slot = 1 } },
    pos = { x = 0, y = 0 },
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    eternal_compat = false,
    unlocked = true,
    discovered = true,
    effect = nil,
    atlas = 'glutton',
    soul_pos = nil,
    display_size = {
    w = 71 * 1.2,
    h = 95 * 1.2
    },
    
    add_to_deck = function(self, card, from_debuff)
    local extra_slot = card.ability.extra and card.ability.extra.extra_slot or 0
    G.jokers.config.card_limit = G.jokers.config.card_limit - extra_slot
end,

    
    remove_from_deck = function(self, card, from_debuff)
    local extra_slot = card.ability.extra and card.ability.extra.extra_slot or 0
    G.jokers.config.card_limit = G.jokers.config.card_limit + extra_slot
end,
loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.mult}}
    end,
    
    calculate = function(self, card, context)
        if context.setting_blind  and not context.blueprint then 
            return {
                func = function()
                    local allowed = { --makes it so that only food jokers can be eaten by glutton
                    ['j_gros_michel'] = true,
                    ['j_ice_cream'] = true,
                    ['j_diet_cola'] = true,
                    ['j_popcorn'] = true,
                    ['j_ramen'] = true,
                    ['j_turtle_bean'] = true,
                    }
                    local destructable_jokers = {}
                    for i, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and allowed[joker.config.center.key] and not SMODS.is_eternal(joker) and not joker.getting_sliced then
                    table.insert(destructable_jokers, joker)
                    end
                    end
                    local target_joker = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('destroy_joker')) or nil
                    
                    if target_joker then
                        target_joker.getting_sliced = true
                          card.ability.extra.mult = (card.ability.extra.mult or 0) + 10
                       G.E_MANAGER:add_event(Event({
                        func = function()
                        target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                        return true
                        end
                        }))
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Yummy!", colour = G.C.RED})
                    end
                    return true
                end
            }
        end
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = card.ability.extra.mult,
                colour = G.C.RED
            }
        end
    end
}

SMODS.Joker{ 
    key = "trebuchet",
    config = { extra = { x_mult = 1.5 } },
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    effect = nil,
    atlas = 'trebuchet',
    soul_pos = nil,

    calculate = function(self,card,context)                 --define calculate functions here
        if context.individual and context.cardarea == G.play then -- if we are in card scoring phase, and we are on individual cards
            if context.other_card:get_id() == 2 or context.other_card:get_id() == 3 then    -- played card is a 2 or 3 by rank
                return {                                    
                    x_mult = card.ability.extra.x_mult, 
                    colour = G.C.RED
                }
            end
        end
    end
}

SMODS.Joker{ 
    key = "perkalator",
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    effect = nil,
    atlas = 'perkalator',
    soul_pos = nil,

    calculate = function(self, card, context)

    if context.ending_shop then

        local consumables = {}

        for _, v in ipairs(G.consumeables.cards) do
            table.insert(consumables, v)
        end

        if #consumables > 0 then

            local chosen = pseudorandom_element(
                consumables,
                pseudoseed('perkalator')
            )

            local copy = copy_card(chosen)

            if copy and #G.consumeables.cards < G.consumeables.config.card_limit then
                G.consumeables:emplace(copy)

                return {
                    message = "Copied!"
                }
            end
        end
    end
end
}

SMODS.Joker {
    key = "yolk",
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    unlocked = true,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = { discards = 0, mult = 1, threshold = 23, triggered = false} },
    atlas = 'yolk',

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.discards,
                card.ability.extra.threshold
            }
        }
    end,

    calculate = function(self, card, context)

        -- Tracks discards

        if context.discard then
            card.ability.extra.discards = card.ability.extra.discards + 1

            if card.ability.extra.discards >= card.ability.extra.threshold then
                card.ability.extra.discards = card.ability.extra.discards - card.ability.extra.threshold
                card.ability.extra.mult = card.ability.extra.mult + 0.2

                return {
                    message = "Level up!",
                    colour = G.C.MULT
                }
            end
        end

        if context.before then
            card.ability.extra.triggered = false
        end

        if context.joker_main then
        if not card.ability.extra.triggered then
        card.ability.extra.triggered = true
            return {
                Xmult_mod = card.ability.extra.mult,
                colour = G.C.MULT
            }
        end
    end
}

SMODS.Joker{ 
    key = "chick",
    config = { extra = {  } },
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 10,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    effect = nil,
    atlas = 'chick',
    soul_pos = nil,

    calculate = function(self,card,context)                 --define calculate functions here
        if context.setting_blind and context.blind.boss and not context.blind.disabled then
            if pseudorandom('jkzb_gambler_joker') < G.GAME.probabilities.normal / 2 then
                G.GAME.blind:disable()
                play_sound('timpani')
                return {
                    message = localize('ph_boss_disabled'),
                    colour = G.C.FILTER
                }
            else 
                return {
                    message = "Nope!",
                    colour = G.C.FILTER
                }
            end
            
        end
    end,
    add_to_deck = function(self, card, from_debuff)
    if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
           if  pseudorandom('jkzb_gambler_joker')< G.GAME.probabilities.normal/2 then --randomizes 1/2 chance
                G.GAME.blind:disable()
                play_sound('timpani')
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')}) 
                return {
                    message = "Disabled!",
                    colour = G.C.FILTER
                }
            else 
                return {
                    message = "Nope!",
                    colour = G.C.FILTER
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)          
        return { vars = {G.GAME.probabilities.normal } }
    end

}