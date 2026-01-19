# Select a random non-dead, non-1-life player to be the boogeyman
tag @r[team=!1, team=!0] add boogeyman
tellraw @a {"color":"red", "text":"The boogeyman is about to be chosen"}

# Resetting the score of function1 causes the countdown_tick function to start
scoreboard objectives add dummy dummy
scoreboard players reset function1 dummy

