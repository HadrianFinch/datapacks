# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s aliveCounter 0
# execute as @a[scores={playerDeath=1..}] run tag @s add respawnExecute
# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s playerDeath 0
# execute as @e[type=player,tag=respawnExecute] run scoreboard players add @s aliveCounter 1
# execute as @a[scores={aliveCounter=1},tag=respawnExecute] run give @s recovery_compass 
# execute as @a[scores={aliveCounter=1..},tag=respawnExecute] run tag @s remove respawnExecut

clear @a[gamemode=survival] enchanting_table
setblock 0 70 0 enchanting_table

kill @e[type=piglin_brute]
kill @e[type=phantom]

execute as @a[tag=wizard_role] at @s run function scotbat:wizard


######## RIGHT CLICK
#### Create scoreboard
scoreboard objectives add wizz minecraft.used:minecraft.carrot_on_a_stick

#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={wizz=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {wizard_wand:1b}}}] as @s at @s run function scotbat:cast_spell

#### Reset objective
scoreboard players remove @e[scores={wizz=1..}] wizz 1

execute as @e[type=armor_stand, tag=alarm_area] at @s run execute as @a[distance=..30, tag=!wizard_role, tag=!wizard_partner] run tellraw @a[tag=wizard_role] [{"text":"Someone entered your alarmed area! "},{"text":"Teleport","color":"dark_purple","bold":true,"italic":true,"hoverEvent":{"action":"show_text","value":[{"text":"Teleport yourself to the area"}]},"clickEvent":{"action":"run_command","value":"/tp @s @e[type=armor_stand, tag=alarm_area, limit=1]"}}]
execute as @e[type=armor_stand, tag=alarm_area] at @s run particle effect ~ ~ ~ 30 0 30 1 60 normal @a[tag=wizard_role]

# scoreboard players remove @e[type=item_frame, nbt={Item:{id:"minecraft:lightning_rod"}}, scores={wirelessRS_pulse_length=1..}] wirelessRS_pulse_length 1
# execute as @e[type=item_frame, nbt={Item:{id:"minecraft:lightning_rod"}}, scores={wirelessRS_pulse_length=0}] run function wireless:wand_use_off