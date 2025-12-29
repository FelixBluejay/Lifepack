scoreboard players remove @a[scores={Died=1..}] Lives 1
execute if entity @a[scores={Died=1..}] run function lifepack:change_team
execute if entity @p[team=0] run gamemode spectator @p[team=0]
scoreboard players reset @a[scores={Died=1..}] Died

