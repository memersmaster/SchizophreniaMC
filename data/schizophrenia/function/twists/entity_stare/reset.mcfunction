execute as @e[tag=entity_stare_mob] run data remove entity @s NoAI
execute as @e[tag=entity_stare_mob] run tag @s remove entity_stare_mob

scoreboard players set #CurrentEntityStareTime TempVariable 0