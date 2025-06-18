# Logic for the Time Jump Anomaly
# This function is called if the #TimeJumpTwist is enabled and the predicate passes.

time add 3600 # Adds 3 minutes (3 * 60 seconds * 20 ticks/second = 3600 ticks)

# Announce the time jump subtly or to admins/via logs if desired.
# For players, it should feel sudden and unannounced by chat.
# Example for admins:
# tellraw @a[tag=admin] [{"text":"[TwistedMC Debug] Time Jump Anomaly Triggered!", "color":"dark_purple"}]
