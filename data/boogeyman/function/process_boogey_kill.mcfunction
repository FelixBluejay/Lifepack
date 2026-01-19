execute if data storage boogeyman:challenge_type {challenge:2} run execute if entity @p[scores={Died=1..},tag=target] run function boogeyman:boogey_win_target

execute if data storage boogeyman:challenge_type {challenge:1} run execute if entity @p[scores={Died=1..}] run function boogeyman:boogey_win_normal
