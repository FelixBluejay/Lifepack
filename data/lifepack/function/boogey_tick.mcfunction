scoreboard players add function1 dummy 1

execute if score function1 dummy matches 40 run function lifepack:display_sequence {text:3, color:red, pitch:1}

execute if score function1 dummy matches 80 run function lifepack:display_sequence {text:2, color:yellow, pitch:1}

execute if score function1 dummy matches 120 run function lifepack:display_sequence {text:1, color:green, pitch:1}

execute if score function1 dummy matches 160 run function lifepack:display_sequence {text:"You are...", color:gold, pitch:0.7}

execute if score function1 dummy matches 240 run title @a[tag=boogeyman] title {"text":"The boogeyman.","color":"red"}
execute if score function1 dummy matches 240 run title @a[tag=!boogeyman] title {"text":"NOT the boogeyman.","color":"green"}
execute if score function1 dummy matches 240 run msg @a[tag=boogeyman] You're THE BOOGEYMAN!
execute if score function1 dummy matches 240 run msg @a[tag=!boogeyman] You're NOT the boogeyman!
execute at @a if score function1 dummy matches 240 run playsound minecraft:block.bell.use master @p ~ ~ ~ 1 0.7
