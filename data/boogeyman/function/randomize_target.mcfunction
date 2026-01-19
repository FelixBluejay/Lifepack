tag @r[team=!0, team=!1, tag=!boogeyman] add target

scoreboard objectives add targetPos dummy

title @p[tag=target] times 20 100 20
title @p[tag=target] subtitle {"color":"dark_red","text":"You're being tracked. Survive for the next 5 minutes"}
title @p[tag=target] title {"color":"dark_red","text": "You're the boogeyman's target"}

tellraw @p[tag=target] {"color":"gold","text":"You're the boogeyman's target. The boogeyman has revieved a compass that leads them to you. Your goal is to survive the next 5 minutes, after which the compass will stop working and you'll recieve a bonus life."}