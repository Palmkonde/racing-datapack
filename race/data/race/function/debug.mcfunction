tellraw @s {text:"=== Race debug ===",color:"gold"}
tellraw @s [{text:"running: "},{score:{name:"#running",objective:"race_clock"}},{text:"   time: "},{score:{name:"#time",objective:"race_clock"}}]
tellraw @s [{text:"per_lap: "},{score:{name:"#per_lap",objective:"race_clock"}}]
tellraw @s [{text:"Diamond  cp: "},{score:{name:"diamond",objective:"cp"}},{text:"   cp_time: "},{score:{name:"diamond",objective:"cp_time"}},{text:"   race: "},{score:{name:"diamond",objective:"race"}}]
tellraw @s [{text:"Gap  Diamond: "},{score:{name:"diamond",objective:"gap"}},{text:"   Emerald: "},{score:{name:"emerald",objective:"gap"}}]