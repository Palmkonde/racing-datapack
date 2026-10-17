# Ignore carts moving before the race starts
execute unless score #running race_clock matches 1 run return fail

# Record progress and time
$scoreboard players add $(racer) cp 1
$scoreboard players operation $(racer) cp_time = #time race_clock

# Sidebar score = cp × 100000 − cp_time
$scoreboard players operation $(racer) race = $(racer) cp
$scoreboard players operation $(racer) race *= #100000 race_clock
$scoreboard players operation $(racer) race -= $(racer) cp_time