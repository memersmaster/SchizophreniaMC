tellraw @a[tag=op] [{"text":"[TwistedMC Debug] Door Knocking Twist Triggered!", "color":"dark_purple"}]

scoreboard players remove @a afkDis.checkAFK 1
scoreboard players add #CurrentAFKCheck TempVariable 1
execute as @a[scores={afkDis.checkAFK=..0}] at @s run function schizophrenia:twists/door_knocking/check_afk

execute if score #CurrentAFKCheck TempVariable matches ..11 run schedule function schizophrenia:twists/door_knocking/logic 1s