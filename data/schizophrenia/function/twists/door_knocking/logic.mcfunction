scoreboard players add @a afkDis.checkAFK 1
scoreboard players add #TempPlayer TempVariable 1
execute as @a[scores={afkDis.checkAFK=5..}] at @s run function schizophrenia:twists/door_knocking/check_afk
execute as @a[team=afkDis.afk] at @s run function schizophrenia:twists/door_knocking/remove_afk
execute if score #TempPlayer TempVariable matches ..8 run schedule function schizophrenia:twists/door_knocking/logic 1s
execute if score #TempPlayer TempVariable matches 9.. run schedule function schizophrenia:twists/door_knocking/logic 1s