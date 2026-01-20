# scoreboard objectives add alivePlayers dummy alivePlayers
# $scoreboard players set 1 alivePlayers $(1)
# $scoreboard players set 2 alivePlayers $(2)
# $scoreboard players set 3+ alivePlayers $(3)
# scoreboard players set sum alivePlayers 0
# scoreboard players operation sum alivePlayers += 1 alivePlayers
# scoreboard players operation sum alivePlayers += 2 alivePlayers
# scoreboard players operation sum alivePlayers += 3 alivePlayers

# title @a times 20 200 20
# execute if score sum alivePlayers matches 1 run title @a title [{"selector":"@p[team=!0]"},{"color":"green", text:" wins!"}]

title @a title [{"selector":"@p[team=!0]"},{"color":"green", text:" wins!"}]
