execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie,limit=1,sort=nearest] at @s run function schizophrenia:twists/mob_flicker_swap/zombie_to_cow_inner

tag @e[tag=is_being_swapped] remove is_being_swapped

data remove storage schizophrenia:flicker_storage cow_swap_data.CustomName
