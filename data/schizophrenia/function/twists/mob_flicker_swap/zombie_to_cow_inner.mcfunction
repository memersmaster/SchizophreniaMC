execute as @e[type=minecraft:cow,tag=is_being_swapped,distance=..1,limit=1,sort=nearest] run data modify entity @s CustomName set from storage schizophrenia:flicker_storage cow_swap_data.CustomName

execute as @e[type=minecraft:cow,tag=is_being_swapped,distance=..1,limit=1,sort=nearest] run effect clear

tp ~ ~-500 ~
tag @s remove is_being_swapped