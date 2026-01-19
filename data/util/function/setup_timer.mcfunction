scoreboard objectives add timer dummy
scoreboard objectives add math dummy

$scoreboard players set timerMinutes timer $(minutes)
scoreboard players set timerSeconds timer 0

scoreboard players set 33% math 0
scoreboard players set 66% math 0
scoreboard players set 0 math 0
scoreboard players set 1 math 1
scoreboard players set 2 math 2
scoreboard players set 3 math 3
scoreboard players set 20 math 20
scoreboard players set 60 math 60
scoreboard players set 120 math 120
scoreboard players set 200 math 200
scoreboard players set 600 math 600
scoreboard players set 1200 math 1200

bossbar add timer timer
bossbar set timer style notched_6
bossbar set timer players @a
title @a times 5 20 40

# Get the time in minutes and convert it to ticks
scoreboard players operation timerTicks timer = timerMinutes timer
scoreboard players operation timerTicks timer *= 1200 math

# Calculate the 33% and 66% points
scoreboard players operation 33% math = timerTicks timer
scoreboard players operation 33% math /= 3 math

scoreboard players operation 66% math = timerTicks timer
scoreboard players operation 66% math /= 3 math
scoreboard players operation 66% math *= 2 math

execute store result bossbar timer max run scoreboard players get timerTicks timer
execute store result bossbar timer value run scoreboard players get timerTicks timer
bossbar set minecraft:timer visible true




