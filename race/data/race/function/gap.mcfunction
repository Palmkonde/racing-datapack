# First to arrive at this checkpoint? Save the time
$execute unless score cp$(cp) first_time matches 0.. run scoreboard players operation cp$(cp) first_time = #time race_clock

# Gap in ticks
$scoreboard players operation $(racer) gap = $(racer) cp_time
$scoreboard players operation $(racer) gap -= cp$(cp) first_time