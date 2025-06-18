execute as @a[scores={JukeboxUse=1..}] if predicate schizophrenia:random_chance_5_percent run playsound schizophrenia:twist.jukebox_glitch master @s
scoreboard players set @a[scores={JukeboxUse=1..}] JukeboxUse 0
