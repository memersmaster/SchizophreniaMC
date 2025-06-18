tag @s add is_being_swapped

data modify storage schizophrenia:flicker_storage cow_swap_data.CustomName set from entity @s CustomName
data modify storage schizophrenia:flicker_storage cow_swap_data.Rotation set from entity @s Rotation


tp @s ~ ~1000 ~

summon minecraft:zombie ~ ~ ~ {Tags:['temp_flicker_zombie'],Invulnerable:1b,NoAI:1b}

execute as @e[type=zombie,tag=temp_flicker_zombie,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]


execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie,distance=..1,limit=1,sort=nearest] run data modify entity @s CustomName set from storage schizophrenia:flicker_storage cow_swap_data.CustomName

schedule function schizophrenia:twists/mob_flicker_swap/zombie_to_cow 5t replace
