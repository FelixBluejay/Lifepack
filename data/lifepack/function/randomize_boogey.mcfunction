
#team empty boogeyman
#team join boogeyman @r

tag @r[team=!1,team=!0] add boogeyman
tellraw @a {"color":"red", "text":"The boogeyman is about to be chosen"}
scoreboard objectives add dummy dummy
scoreboard players reset function1 dummy
scoreboard players set global timer 48000
bossbar set minecraft:timer visible true

