tellraw @a[tag=boogeyman] {"color":"green", "text": "Yay! You did it!"}
execute if data storage boogeyman:challenge_type {challenge:2} run scoreboard players add @p[tag=boogeyman] Lives 1
function lifepack:change_team
tag @a[tag=boogeyman] remove boogeyman
scoreboard players set timerTicks timer -100
