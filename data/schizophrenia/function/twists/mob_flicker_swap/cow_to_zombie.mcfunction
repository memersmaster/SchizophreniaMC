tag @s add is_being_swapped

effect give @s invisibility 1 1 true

data modify storage schizophrenia:flicker_storage cow_swap_data.CustomName set from entity @s CustomName

summon minecraft:zombie ~ ~ ~ {Tags:["temp_flicker_zombie"],Invulnerable:true,NoAI:true}

execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie,distance=..1,limit=1,sort=nearest] run data modify entity @s CustomName set from storage schizophrenia:flicker_storage cow_swap_data.CustomName

schedule function schizophrenia:twists/mob_flicker_swap/zombie_to_cow 2t replace
