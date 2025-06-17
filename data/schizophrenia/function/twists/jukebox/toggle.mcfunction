execute if score #JukeboxTwist TwistConfig matches 1 run scoreboard players set #TempPlayer TempVariable 1
execute if score #JukeboxTwist TwistConfig matches 1 run scoreboard players set #JukeboxTwist TwistConfig 0

execute if score #JukeboxTwist TwistConfig matches 0 unless score #TempPlayer TempVariable matches 1 run scoreboard players set #JukeboxTwist TwistConfig 1 

scoreboard players set #TempPlayer TempVariable 0

