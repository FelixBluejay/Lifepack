scoreboard players remove @a[scores={Died=1..}] Lives 1
# Check if kill was boogey
execute if entity @p[scores={Kills=1..}, tag=boogeyman] run function boogeyman:process_boogey_kill
execute if entity @a[scores={Died=1..}] run function lifepack:change_team
execute if entity @p[team=0] run gamemode spectator @p[team=0]

# End the game if only 1 player is alive
# execute store result storage lifepack:team_counts team.1 int 1 run team list 1
# execute store result storage lifepack:team_counts team.2 int 1 run team list 2
# execute store result storage lifepack:team_counts team.3 int 1 run team list 3+
# execute if entity @a[scores={Died=1..}] run function lifepack:end_game with storage lifepack:team_counts team

# Reset scoreboard
scoreboard players reset @a[scores={Died=1..}] Died
scoreboard players reset @a[scores={Kills=1..}] Kills