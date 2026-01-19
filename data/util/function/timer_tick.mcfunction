scoreboard players remove timerTicks timer 1
execute store result bossbar timer value run scoreboard players get timerTicks timer

# change timer color dependent on time left
execute if score timerTicks timer > 66% math run bossbar set timer color green
execute if score timerTicks timer < 66% math run bossbar set timer color yellow
execute if score timerTicks timer < 33% math run bossbar set timer color red

# Get the current timer value in ticks amd parse it to seconds
scoreboard players operation timerSeconds timer = timerTicks timer
scoreboard players operation timerSeconds timer /= 20 math
scoreboard players operation timerSeconds timer %= 60 math

# Get the current timer value in ticks amd parse it to minutes
scoreboard players operation timerMinutes timer = timerTicks timer
scoreboard players operation timerMinutes timer /= 1200 math

execute if score timerTicks timer matches 0.. run bossbar set timer name ["Timer - ",{"score":{"name":"timerMinutes","objective":"timer"}},":",{"score":{"name":"timerSeconds","objective":"timer"}}," remaining"]
execute if score timerSeconds timer matches 0..9 run bossbar set timer name ["Timer - ",{"score":{"name":"timerMinutes","objective":"timer"}},":0",{"score":{"name":"timerSeconds","objective":"timer"}}," remaining"]

execute if score timerTicks timer matches 0 run bossbar set timer name "Time's up!"
execute if score timerTicks timer matches 0 run title @a title "Time's up!"
execute if score timerTicks timer matches -100 run bossbar set minecraft:timer visible false
execute if score timerTicks timer matches 0 run function boogeyman:boogey_lose