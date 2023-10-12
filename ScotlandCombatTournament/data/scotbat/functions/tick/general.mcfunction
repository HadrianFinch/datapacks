# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s aliveCounter 0
# execute as @a[scores={playerDeath=1..}] run tag @s add respawnExecute
# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s playerDeath 0
# execute as @e[type=player,tag=respawnExecute] run scoreboard players add @s aliveCounter 1
# execute as @a[scores={aliveCounter=1},tag=respawnExecute] run give @s recovery_compass 
# execute as @a[scores={aliveCounter=1..},tag=respawnExecute] run tag @s remove respawnExecut

clear @a[gamemode=survival] enchanting_table
setblock 0 70 0 enchanting_table

kill @e[type=piglin_brute]
######## RIGHT CLICK
#### Create scoreboard
scoreboard objectives add wizz minecraft.used:minecraft.carrot_on_a_stick

#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={wizz=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {wizard_wand:1b}}}] as @s at @s run function scotbat:cast_spell

#### Reset objective
scoreboard players remove @e[scores={wizz=1..}] wizz 1


######## RIGHT CLICK
#### Create scoreboard
scoreboard objectives add ride minecraft.used:minecraft.carrot_on_a_stick

#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={ride=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {ride_stick:1b}}}] as @s at @s run function scotbat:force_ride

#### Reset objective
scoreboard players remove @e[scores={ride=1..}] ride 1

execute as @e[type=armor_stand, tag=alarm_area] at @s run execute as @a[distance=..30, tag=!wizard_role, tag=!wizard_partner] run tellraw @a[tag=wizard_role] [{"text":"Someone entered your alarmed area! "},{"text":"Teleport","color":"dark_purple","bold":true,"italic":true,"hoverEvent":{"action":"show_text","value":[{"text":"Teleport yourself to the area"}]},"clickEvent":{"action":"run_command","value":"/tp @s @e[type=armor_stand, tag=alarm_area, limit=1]"}}]
execute as @e[type=armor_stand, tag=alarm_area] at @s run particle effect ~ ~ ~ 30 0 30 1 60 normal @a[tag=wizard_role]

execute as @a[nbt={Inventory:[{Slot: 100b, tag:{dasher_boots:1b}}]}] run effect give @s speed 2 1 true
execute as @a[nbt={Inventory:[{Slot: 100b, tag:{dasher_boots:1b}}]}] run effect give @s jump_boost 2 2 true
execute as @a[nbt={Inventory:[{Slot: 100b, tag:{dasher_boots:1b}}]}] run effect give @s dolphins_grace 2 0 true
execute as @a[nbt={Inventory:[{Slot: 100b, tag:{dasher_boots:1b}}]}] run attribute @s generic.max_health base set 16
execute as @a[nbt={Inventory:[{Slot: 100b, tag:{dasher_boots:1b}}]}] at @s run fill ~-1 ~-2 ~-1 ~1 ~ ~1 obsidian replace lava

execute as @a[tag=cleric_role, gamemode=survival, nbt={Inventory:[{Slot: -106b, tag:{regen_aura:1b}}]}] at @s run effect give @a[distance=..3] saturation 4 2 true
execute as @a[tag=cleric_role, gamemode=survival, nbt={Inventory:[{Slot: -106b, tag:{regen_aura:1b}}]}] at @s run particle effect ~ ~ ~ 3 0 3 1 20 normal @a

execute as @a[tag=cleric_role, gamemode=survival, nbt={Inventory:[{Slot: -106b, tag:{wither_aura:1b}}]}] at @s run effect give @e[type=!player, distance=..5] wither 4 4 true
execute as @a[tag=cleric_role, gamemode=survival, nbt={Inventory:[{Slot: -106b, tag:{wither_aura:1b}}]}] at @s run particle effect ~ ~ ~ 5 0 5 1 20 normal @a

execute as @a[tag=tank_role, gamemode=!creative] run attribute @s generic.max_health base set 100
execute as @a[tag=tank_role, gamemode=!creative] run attribute @s generic.attack_speed base set 3
execute as @a[tag=tank_role, gamemode=!creative] run attribute @s generic.armor base set 0
execute as @a[tag=tank_role, gamemode=!creative] run attribute @s generic.armor_toughness base set 0
execute as @a[tag=tank_role, gamemode=!creative] run clear @s iron_chestplate
execute as @a[tag=tank_role, gamemode=!creative] run clear @s diamond_chestplate
execute as @a[tag=tank_role, gamemode=!creative] run clear @s netherite_chestplate
execute as @a[tag=tank_role, gamemode=!creative] run clear @s chainmail_chestplate
execute as @a[tag=tank_role, gamemode=!creative] run clear @s iron_helmet
execute as @a[tag=tank_role, gamemode=!creative] run clear @s iron_boots
execute as @a[tag=tank_role, gamemode=!creative] run clear @s iron_leggings
execute as @a[tag=tank_role, gamemode=!creative] run clear @s diamond_helmet
execute as @a[tag=tank_role, gamemode=!creative] run clear @s diamond_boots
execute as @a[tag=tank_role, gamemode=!creative] run clear @s diamond_leggings
execute as @a[tag=tank_role, gamemode=!creative] run clear @s netherite_helmet
execute as @a[tag=tank_role, gamemode=!creative] run clear @s netherite_boots
execute as @a[tag=tank_role, gamemode=!creative] run clear @s netherite_leggings
execute as @a[tag=tank_role, gamemode=!creative] run clear @s chainmail_helmet
execute as @a[tag=tank_role, gamemode=!creative] run clear @s chainmail_boots
execute as @a[tag=tank_role, gamemode=!creative] run clear @s chainmail_leggings

execute as @a[nbt={Inventory:[{Slot: 103b, tag:{oceanmaster_crown:1b}}]}] at @s if block ~ ~ ~ water run effect give @s conduit_power 20 0 true
execute as @a[nbt={Inventory:[{Slot: 103b, tag:{oceanmaster_crown:1b}}]}] at @s if block ~ ~ ~ water run effect give @s dolphins_grace 20 0 true
execute as @a[nbt={Inventory:[{Slot: 103b, tag:{oceanmaster_crown:1b}}]}] at @s if block ~ ~ ~ water run effect give @s saturation 2 0 true


execute as @a[tag=hunter_role] run item replace entity @s inventory.0 with spectral_arrow 64
execute as @a[tag=merchant_role] run item replace entity @s inventory.0 with emerald 64
execute as @a[tag=ghost_role] run item replace entity @s hotbar.8 with ender_pearl 16

execute as @a[nbt={Inventory:[{Slot: 102b, tag:{invisibility_cloak:1b}}]}] at @s run effect give @s invisibility 2 0 true

# execute as @e[type=vex] run data modify entity @s Attributes[{Name:"generic.follow_range"}].Base set value 0

# execute as @e[type=vex, limit=1] at @s run summon snowball ~ ~ ~ {Owner: [I;0,0,0,1], Motion: [0, 1, 0]}