tellraw @a[tag=boogeyman] {"color":"red", "text": "You ran out of time. Now, die."}
kill @a[tag=boogeyman]
tag @a[tag=boogeyman] remove boogeyman
bossbar set minecraft:timer visible false
scoreboard players set global timer -100