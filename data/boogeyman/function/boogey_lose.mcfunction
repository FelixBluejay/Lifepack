tellraw @p[tag=boogeyman] {"color":"red", "text": "You ran out of time. Now, die."}
kill @p[tag=boogeyman]
tag @p[tag=boogeyman] remove boogeyman
tag @p[tag=target] remove target
bossbar set minecraft:timer visible false
scoreboard players set global timer -100