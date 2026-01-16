scoreboard objectives add Died deathCount
scoreboard objectives add Lives dummy
scoreboard players reset @a Lives 
scoreboard players add @a Lives 3
scoreboard objectives setdisplay list Lives

team add 0
team modify 0 color gray
team add 1
team modify 1 color red
team add 2
team modify 2 color yellow
team add 3+
team modify 3+ color green

function lifepack:change_team
function lifepack:setup_timer

scoreboard objectives add dummy dummy
scoreboard players add function1 dummy 1000