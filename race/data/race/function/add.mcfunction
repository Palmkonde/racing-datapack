$scoreboard players set $(racer) race 0
$scoreboard players set $(racer) cp 0
$scoreboard players set $(racer) cp_time 0
$scoreboard players display name $(racer) race {text:"$(name)",color:"$(color)"}

$scoreboard players set $(racer) gap 0

$scoreboard players display numberformat $(racer) race fixed {text:"Ready",color:"gray"}
$data modify storage race:names $(racer) set value "$(name)"