tellraw @a[tag=op] [{"text":"[TwistedMC Debug] Spawn Text Anomaly Successfully Ran!", "color":"dark_purple"}]

summon text_display ~ ~ ~ {CustomNameVisible:1b,see_through:1b,Tags:["random_nametag_text_display"],CustomName:{"bold":true,"color":"dark_red","text":"Help Me"}}

execute positioned ~ ~ ~ run schedule function schizophrenia:twists/random_nametag/kill_text 2s