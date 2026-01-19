execute if score @p[tag=boogeyman] challenge matches 1 run tellraw @p[tag=boogeyman] {"color":"gold", "text":"Selected: NORMAL"} 
execute if score @p[tag=boogeyman] challenge matches 1 run function boogeyman:boogey_normal
execute if score @p[tag=boogeyman] challenge matches 2 run tellraw @p[tag=boogeyman] {"color":"gold", "text":"Selected: TARGET"} 
execute if score @p[tag=boogeyman] challenge matches 2 run function boogeyman:boogey_target
execute if score @p[tag=boogeyman] challenge matches 1..2 run scoreboard objectives remove challenge

