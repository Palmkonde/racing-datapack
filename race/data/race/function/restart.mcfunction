# Stop the clock
scoreboard players set #running race_clock 0
scoreboard players set #time race_clock 0

# Wipe every racer's scores
scoreboard players reset * cp
scoreboard players reset * cp_time
scoreboard players reset * lap
scoreboard players reset * race

# Rebuild the grid
function race:racers

scoreboard players reset * first_time
scoreboard players reset * gap