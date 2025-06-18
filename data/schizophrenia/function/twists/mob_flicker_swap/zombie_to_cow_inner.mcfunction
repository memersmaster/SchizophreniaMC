execute as @e[type=minecraft:cow,tag=restored_cow_flicker,distance=..1,limit=1,sort=nearest] run data modify entity @s CustomName set from storage schizophrenia:flicker_storage cow_swap_data.CustomName

execute as @e[type=minecraft:cow,tag=restored_cow_flicker,distance=..1,limit=1,sort=nearest] run effect clear

tag @s remove restored_cow_flicker
kill @s
