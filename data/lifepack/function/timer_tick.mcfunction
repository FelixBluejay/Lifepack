# scoreboard players remove global timer 1
# execute store result bossbar timer value run scoreboard players get global timer
# execute if score global timer matches 36001.. run bossbar set timer color green
# execute if score global timer matches 6001..36000 run bossbar set timer color yellow
# execute if score global timer matches ..6000 run bossbar set timer color red
# scoreboard players operation seconds timer = global timer
# scoreboard players operation minutes timer = global timer
# scoreboard players operation seconds timer /= 20 math
# scoreboard players operation minutes timer /= 1200 math
# scoreboard players operation seconds timer %= 60 math
# execute if score global timer matches 0.. run bossbar set timer name ["Timer - ",{"score":{"name":"minutes","objective":"timer"}},":",{"score":{"name":"seconds","objective":"timer"}}," remaining"]
# execute if score seconds timer matches 0..9 run bossbar set timer name ["Timer - ",{"score":{"name":"minutes","objective":"timer"}},":0",{"score":{"name":"seconds","objective":"timer"}}," remaining"]
# execute if score global timer matches 0 run bossbar set timer name "Time's up!"
# execute if score global timer matches 0 run function boogeyman:boogey_lose
# execute if score global timer matches 0 run title @a title "Time's up!"