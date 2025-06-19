tag @s add is_being_swapped

summon minecraft:zombie ^ ^100 ^ {HasVisualFire:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,CustomNameVisible:0b,LeftHanded:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["temp_flicker_zombie"]}

execute as @e[type=zombie,tag=temp_flicker_zombie] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]


schedule function schizophrenia:twists/mob_flicker_swap/zombie_to_mob 2s replace



