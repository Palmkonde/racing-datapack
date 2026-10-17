# First to arrive at this checkpoint? Save the time
$execute unless score cp$(cp) first_time matches 0.. run scoreboard players operation cp$(cp) first_time = #time race_clock

# Gap in ticks
$scoreboard players operation $(racer) gap = $(racer) cp_time
$scoreboard players operation $(racer) gap -= cp$(cp) first_time

# Lap = cp / per_lap + 1
$scoreboard players operation $(racer) lap = $(racer) cp
$scoreboard players operation $(racer) lap /= #per_lap race_clock
$scoreboard players add $(racer) lap 1

# Gap ticks to seconds and tenths
$scoreboard players operation #sec race_clock = $(racer) gap
scoreboard players operation #sec race_clock /= #20 race_clock
$scoreboard players operation #tenth race_clock = $(racer) gap
scoreboard players operation #tenth race_clock %= #20 race_clock
scoreboard players operation #tenth race_clock /= #2 race_clock

# Hand values to the display function
$execute store result storage race:tmp lap int 1 run scoreboard players get $(racer) lap
execute store result storage race:tmp sec int 1 run scoreboard players get #sec race_clock
execute store result storage race:tmp tenth int 1 run scoreboard players get #tenth race_clock

execute store result storage race:tmp laps int 1 run scoreboard players get #laps race_clock

function race:show with storage race:tmp