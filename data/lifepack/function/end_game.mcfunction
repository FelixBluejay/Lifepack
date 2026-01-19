scoreboard objectives add alivePlayers dummy alivePlayers
$scoreboard players set 1 alivePlayers $(1)
$scoreboard players set 2 alivePlayers $(2)
$scoreboard players set 3+ alivePlayers $(3)
scoreboard players set sum alivePlayers 1
scoreboard players operation sum alivePlayers += 1 alivePlayers
scoreboard players operation sum alivePlayers += 2 alivePlayers
scoreboard players operation sum alivePlayers += 3 alivePlayers

# execute if score sum alivePlayers matches 1 run title @a title {"color":"green", text:"@p[team=!0] wins"}

# execute store result storage lifepack:team_counts teamNames.1  1 run team list 3+
