execute as @e[tag=frozen] run data modify entity @s NoAI set value 0b
execute as @e[tag=frozen] run tag @s remove frozen
tag @a[tag=freeze_ignored] remove freeze_ignored
schedule clear scotbat:freeze_time_tick