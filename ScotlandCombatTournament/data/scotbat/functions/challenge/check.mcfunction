execute as @e[type=armor_stand, tag=challenge_countdown] run scoreboard players remove @s challenge_time_left 1
execute store result bossbar challenge_time_left value run scoreboard players get @e[type=armor_stand, tag=challenge_countdown, limit=1] challenge_time_left 
execute as @e[scores={challenge_time_left=..0}, limit=1] at @s run function scotbat:challenge/end
execute as @a[scores={challenge_complete=1..}] at @s run function scotbat:challenge/end