tellraw @p[tag=boogeyman] {"color":"red", "text": "You ran out of time. Now, die."}
kill @p[tag=boogeyman]

# If the target challenge has been chosen and the target survived, they get awarded 1 life
execute if data storage boogeyman:challenge_type {challenge:2} run scoreboard players add @p[tag=target] Lives 1
execute if data storage boogeyman:challenge_type {challenge:2} run tellraw @p[tag=target] {"color":"green", "text": "You survived! Here, have a life."}
function lifepack:change_team

tag @p[tag=boogeyman] remove boogeyman
tag @p[tag=target] remove target
bossbar set minecraft:timer visible false
scoreboard players set global timer -100