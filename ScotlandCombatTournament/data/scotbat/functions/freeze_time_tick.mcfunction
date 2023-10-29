execute as @a[tag=freeze_ignored] run schedule function scotbat:freeze_time_tick 1t

execute as @e[tag=!freeze_ignored, type=!player] run tag @s add frozen
execute as @e[tag=frozen] run data modify entity @s NoAI set value 1b
execute as @e[tag=!freeze_ignored] run effect give @s slowness 2 100
execute as @e[tag=!freeze_ignored] run effect give @s slow_falling 2 100
execute as @e[tag=!freeze_ignored] run effect give @s weakness 2 100
execute as @e[tag=!freeze_ignored] run effect give @s mining_fatigue 2 100
execute as @e[tag=!freeze_ignored] run tp @s @s
