# Create everything we need
scoreboard objectives add race dummy "Race"
scoreboard objectives add race_clock dummy
scoreboard objectives add cp dummy
scoreboard objectives add cp_time dummy
scoreboard objectives add lap dummy
scoreboard objectives setdisplay sidebar race

# Constants
scoreboard players set #100000 race_clock 100000
execute unless score #per_lap race_clock matches 1.. run scoreboard players set #per_lap race_clock 4

say Race datapack loaded

scoreboard objectives add first_time dummy
scoreboard objectives add gap dummy

scoreboard players set #20 race_clock 20
scoreboard players set #2 race_clock 2

function race:config