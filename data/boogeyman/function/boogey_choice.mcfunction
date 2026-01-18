scoreboard objectives add challenge trigger challenge
scoreboard players enable @p[tag=boogeyman] challenge

tellraw @p[tag=boogeyman] {"color":"gold", "text":"You have been chosen as the boogeyman. Please select your challenge below. If no choice has been made within 60 seconds, the default option of \"[NORMAL]\" will be chosen for you."}

tellraw @p[tag=boogeyman] {"click_event":{"action":"run_command","command":"trigger challenge set 1"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"You have 30 minutes to kill any player. If you fail, you lose a life."}]},"text":"[NORMAL]"}

tellraw @p[tag=boogeyman] {"click_event":{"action":"run_command","command":"trigger challenge set 2"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"You have 5 minutes to kill a specific player. You will be given a compass that points in their direction. If you fail, you lose 1 life and your target gains 1 life, but if you succeed, you gain 1 life."}]},"text":"[TARGET]"}