# Called AS the player who used the jukebox (JukeboxUse=1..)
# --- Assign Unique ID to Player ---
scoreboard players operation @s JukeboxTracked = #NextUniqueID GlobalJukeboxID
scoreboard players add #NextUniqueID GlobalJukeboxID 1

# --- Tag Player and Set Delay ---
tag @s add active_jukebox_user
scoreboard players set @s PlayerJukeboxDelay 60 # 3 seconds at 20 TPS

# --- Summon Marker at Jukebox and Assign ID ---
# Find nearest jukebox, summon marker, tag it, and give it the same JukeboxTracked ID
# Marker has 'schizophrenia_twist_marker' for general cleanup, 'jukebox_marker' for this twist
execute at @s align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker,distance=..1,tag=jukebox_marker,dx=0,dy=0,dz=0] run summon minecraft:marker ~ ~ ~ {Tags:["schizophrenia_twist_marker", "jukebox_marker", "newly_summoned_marker"]}

# Assign JukeboxTracked ID to the newly summoned marker
# This relies on the marker being very close and uniquely tagged 'newly_summoned_marker' for this brief moment
execute at @s align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ minecraft:jukebox run scoreboard players operation @e[type=minecraft:marker,tag=newly_summoned_marker,distance=..1,limit=1] JukeboxTracked = @s JukeboxTracked

# Remove the temporary summoning tag
execute at @s align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ minecraft:jukebox run tag @e[type=minecraft:marker,tag=newly_summoned_marker,distance=..1,limit=1] remove newly_summoned_marker

# --- Reset JukeboxUse score ---
scoreboard players set @s JukeboxUse 0

# --- Debug ---
# tellraw @s [{"text":"[Jukebox] Init Delay. Your ID: ", "color":"yellow"}, {"score":{"name":"@s","objective":"JukeboxTracked"}, "color":"aqua"}]
# execute at @s align xyz positioned ~.5 ~ ~.5 if block ~ ~ ~ minecraft:jukebox run tellraw @s [{"text":"[Jukebox] Marker ID: ", "color":"yellow"}, {"score":{"name":"@e[type=marker,tag=jukebox_marker,distance=..1,limit=1]","objective":"JukeboxTracked"}, "color":"aqua"}]
