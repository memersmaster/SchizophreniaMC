tag @s add is_being_swapped

data merge entity @s {NoAI:1b,NoGravity:1b}

summon minecraft:husk ^ ^300 ^ {HasVisualFire:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,CustomNameVisible:0b,LeftHanded:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["temp_flicker_zombie"]}

execute as @e[type=husk,tag=temp_flicker_zombie] at @s at @p[gamemode=!spectator] positioned ~ ~300 ~ run rotate @s facing ~ ~ ~


schedule function schizophrenia:twists/mob_flicker_swap/teleport_zombie_to_surface 2s replace



