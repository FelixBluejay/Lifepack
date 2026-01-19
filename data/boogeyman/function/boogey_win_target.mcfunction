tellraw @a[tag=boogeyman] {"color":"green", "text": "You killed your target! Here, have a life."}

scoreboard players add @p[tag=boogeyman] Lives 1
function lifepack:change_team

tag @a[tag=boogeyman] remove boogeyman
tag @a[tag=target] remove target
scoreboard players set timerTicks timer -99
