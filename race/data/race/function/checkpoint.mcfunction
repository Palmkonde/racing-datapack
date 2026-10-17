# Ignore carts moving before the race starts
execute unless score #running race_clock matches 1 run return fail

# Already finished? Ignore
$execute if score $(racer) cp >= #total_cp race_clock run return fail

# Record progress and time
$scoreboard players add $(racer) cp 1
$scoreboard players operation $(racer) cp_time = #time race_clock

# Sidebar score = cp × 100000 − cp_time
$scoreboard players operation $(racer) race = $(racer) cp
$scoreboard players operation $(racer) race *= #100000 race_clock
$scoreboard players operation $(racer) race -= $(racer) cp_time

# Prepare values for the gap function
$execute store result storage race:tmp cp int 1 run scoreboard players get $(racer) cp
$data modify storage race:tmp racer set value "$(racer)"
function race:gap with storage race:tmp

# Just finished?
$execute if score $(racer) cp >= #total_cp race_clock run function race:finish with storage race:tmp