execute if score #FootstepsTwist TwistConfig matches 1 run scoreboard players set #TempPlayer TempVariable 1
execute if score #FootstepsTwist TwistConfig matches 1 run scoreboard players set #FootstepsTwist TwistConfig 0

execute if score #FootstepsTwist TwistConfig matches 0 unless score #TempPlayer TempVariable matches 1 run scoreboard players set #FootstepsTwist TwistConfig 1

scoreboard players set #TempPlayer TempVariable 0
