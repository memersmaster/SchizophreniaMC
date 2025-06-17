tellraw @s {"text":"\n--- TwistedMC Configuration ---", "color":"gold"}


execute if score #JukeboxTwist TwistConfig matches 0 run tellraw @a ["",{text:"- Jukebox Twist: ",color:"gray"},{text:"[DISABLED]",color:"red",bold:true,click_event:{action:"run_command",command:"/function schizophrenia:twists/jukebox/toggle"},hover_event:{action:"show_text",value:[{text:"Click to Enable",color:"green"}]}}]
execute if score #JukeboxTwist TwistConfig matches 1 run tellraw @a ["",{text:"- Jukebox Twist: ",color:"gray"},{text:"[ENABLED]",color:"green",bold:true,click_event:{action:"run_command",command:"/function schizophrenia:twists/jukebox/toggle"},hover_event:{action:"show_text",value:[{text:"Click to Disable",color:"red"}]}}]

# execute if score #JukeboxTwist TwistConfig matches 1 run tellraw @s ["",{"text":"- Jukebox Twist: ","color":"gray"},{"text":"[ENABLED]","color":"green","bold":true,"click_event":{"action":"run_command","value":"/function schizophrenia:twists/jukebox/toggle"},"hover_event":{"action":"show_text","contents":[{"text":"Click to Disable","color":"red"}]}}]
# execute if score #JukeboxTwist TwistConfig matches 0 run tellraw @s ["",{"text":"- Jukebox Twist: ","color":"gray"},{"text":"[DISABLED]","color":"red","bold":true,"click_event":{"action":"run_command","value":"/function schizophrenia:twists/jukebox/toggle"},"hover_event":{"action":"show_text","contents":[{"text":"Click to Enable","color":"green"}]}}]

