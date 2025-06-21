tellraw @a[tag=op] [{"text":"[TwistedMC Debug] Entity Stare Triggered!", "color":"dark_purple"}]

scoreboard players add #CurrentEntityStareTime TempVariable 1
execute at @s as @e[type=#schizophrenia:alive_mobs,distance=..80] run tag @s add entity_stare_mob
execute as @e[tag=entity_stare_mob] run data merge entity @s {NoAI:1b}
execute as @e[tag=entity_stare_mob] run rotate @s facing entity @p

execute if score #CurrentEntityStareTime TempVariable matches ..4 run function schizophrenia:twists/entity_stare/logic
schedule function schizophrenia:twists/entity_stare/reset 90t