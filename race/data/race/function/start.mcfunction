function race:restart
scoreboard players operation #total_cp race_clock = #laps race_clock
scoreboard players operation #total_cp race_clock *= #per_lap race_clock
scoreboard players set #running race_clock 1