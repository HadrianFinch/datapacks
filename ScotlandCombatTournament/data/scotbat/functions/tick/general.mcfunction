# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s aliveCounter 0
# execute as @a[scores={playerDeath=1..}] run tag @s add respawnExecute
# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s playerDeath 0
# execute as @e[type=player,tag=respawnExecute] run scoreboard players add @s aliveCounter 1
# execute as @a[scores={aliveCounter=1},tag=respawnExecute] run give @s recovery_compass 
# execute as @a[scores={aliveCounter=1..},tag=respawnExecute] run tag @s remove respawnExecut

# clear @a[gamemode=survival] enchanting_table
# setblock 0 70 0 enchanting_table

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


######## RIGHT CLICK
#### Create scoreboard
scoreboard objectives add freeze minecraft.used:minecraft.carrot_on_a_stick

#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={freeze=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {freeze_time_item:1b}}}] as @s at @s run function scotbat:freeze_time_for_noon

#### Reset objective
scoreboard players remove @e[scores={freeze=1..}] freeze 1

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


execute as @a[tag=hunter_role] run item replace entity @s inventory.0 with arrow 64
execute as @a[tag=merchant_role] run item replace entity @s inventory.0 with emerald 64
execute as @a[tag=ghost_role] run item replace entity @s hotbar.8 with ender_pearl 16

execute as @a[nbt={Inventory:[{Slot: 102b, tag:{invisibility_cloak:1b}}]}] at @s run effect give @s invisibility 2 0 true


execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{sunbolt:1b}}}] at @s run execute as @e[tag=!noon_knight, type=!snowball, distance=1..3] at @s run damage @s 10 magic by @a[tag=noon_knight, limit=1]
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{sunbolt:1b}}}] at @s run execute as @e[tag=!noon_knight, type=!snowball, distance=1] at @s run damage @s 28 magic by @a[tag=noon_knight, limit=1]


execute at @e[type=item, nbt={Item:{tag:{demiplane_access:1b}}}] if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run particle flash ~ ~ ~ 0 0 0 0.1 1 normal
execute at @e[type=item, nbt={Item:{tag:{demiplane_access:1b}}}] if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run execute as @a[distance=..3, limit=1, sort=nearest] run give @s nether_star{display:{Name:'{"text":"Demiplane Access Token","color":"dark_blue","bold":false,"italic":false}',Lore:['{"text":"Throw on ground to activate"}']},HideFlags:1,demiplane_access:1b,Enchantments:[{}]} 1
execute at @e[type=item, nbt={Item:{tag:{demiplane_access:1b}}}] if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run execute as @a[distance=..3, limit=1, sort=nearest] run execute in infinity_game:demiplane run tp @s 0.5 106 0.5
execute as @e[type=item, nbt={Item:{tag:{demiplane_access:1b}}}] if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run kill @s

execute at @e[type=item, nbt={Item:{tag:{demiplane_invite_onetime:1b}}}] if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] if entity @a[distance=..3, tag=!hermit_role] run particle flash ~ ~ ~ 0 0 0 0.1 1 normal
execute at @e[type=item, nbt={Item:{tag:{demiplane_invite_onetime:1b}}}] if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run execute as @a[distance=..3, limit=1, sort=nearest, tag=!hermit_role] run execute in infinity_game:demiplane run tp @s 0.5 106 0.5
execute as @e[type=item, nbt={Item:{tag:{demiplane_invite_onetime:1b}}}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] if entity @a[distance=..2, tag=!hermit_role] run kill @s

execute at @a[scores={return_home_time=100..}] run particle flash ~ ~ ~ 0 0 0 0.1 1 normal
execute as @a[scores={return_home_time=100..}] in minecraft:overworld at @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run tp @s ~ ~ ~
execute as @a[scores={return_home_time=100..}] run scoreboard players set @s return_home_time 0

execute as @a[nbt={Inventory:[{Slot: 103b, tag:{god_armor:1b}}]}] at @s run effect give @s night_vision 60 5 true


######## RIGHT CLICK
# Create scoreboard
scoreboard objectives add mine minecraft.used:minecraft.carrot_on_a_stick

#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={mine=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {mine_tube:1b}}}] as @s at @s run fill ~-8 -60 ~-8 ~8 ~2 ~8 air
execute as @a[scores={mine=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {mine_tube:1b}}}] as @s at @s run setblock ~ ~-1 ~ bedrock


#### Reset objective
scoreboard players remove @e[scores={mine=1..}] mine 1


######## RIGHT CLICK
# Create scoreboard
scoreboard objectives add explode minecraft.used:minecraft.carrot_on_a_stick

#### Detect players who hold the carrot on a stick and right click
execute as @a[scores={explode=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {explode_detonator:1b}}}] run execute as @e[type=item_frame, nbt={Item:{id:"minecraft:tnt", tag:{bomb_tnt:1b}}}] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air destroy
execute as @a[scores={explode=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {explode_detonator:1b}}}] run execute as @e[type=item_frame, nbt={Item:{id:"minecraft:tnt", tag:{bomb_tnt:1b}}}] at @s run particle explosion ~ ~ ~ 8 8 8 1 4 normal
execute as @a[scores={explode=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag: {explode_detonator:1b}}}] run execute as @e[type=item_frame, nbt={Item:{id:"minecraft:tnt", tag:{bomb_tnt:1b}}}] at @s run kill @s

#### Reset objective
scoreboard players remove @e[scores={explode=1..}] explode 1

execute as @a[nbt={Inventory:[{Slot: -106b, tag:{flight_item:1b}}]}] at @s run effect give @s slow_falling 1 0 true
execute as @a[nbt={SelectedItem:{tag:{flight_item:1b}}}] at @s run effect give @s levitation 1 15 true
execute as @a[nbt={Inventory:[{Slot: -106b, tag:{flight_item:1b}}]}] at @s run effect give @s speed 1 5
execute as @a[nbt={SelectedItem:{tag:{flight_item:1b}}}] at @s run effect give @s speed 1 5

execute at @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run forceload add ~ ~
execute as @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run data modify entity @s Invulnerable set value 1b
execute as @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run data modify entity @s Invisible set value 1b
execute at @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] run particle enchant ~ ~ ~ 1 1 1 0.1 1 normal

execute as @e[type=item_frame, nbt={Item:{tag:{teleport_point_any:1b}}}] run data modify entity @s Invisible set value 1b
execute at @e[type=item_frame, nbt={Item:{tag:{teleport_point_any:1b}}}] run forceload add ~ ~

execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_1:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_1:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_1:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_2:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_2:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_2:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_3:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_3:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_3:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_4:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_4:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_4:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_5:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_5:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_5:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_6:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_6:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_6:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_7:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_7:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_7:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_8:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_8:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_8:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_9:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_9:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_9:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_10:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_10:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_10:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_11:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_11:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_11:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_12:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_12:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_12:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_13:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_13:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_13:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_14:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_14:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_14:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_15:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_15:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_15:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
execute as @a[scores={crouch_detect=10..}] at @s if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_16:1b}}}, distance=..1] if entity @e[type=item_frame, nbt={Item:{tag:{teleport_point_16:1b}}}, distance=1..] at @e[type=item_frame, nbt={Item:{tag:{teleport_point_16:1b}}}, distance=1.., limit=1] run tp @s ~ ~ ~
scoreboard players reset @a[scores={crouch_detect=10..}] crouch_detect


# Alchemist
execute as @e[type=potion, nbt={Item:{tag:{smoke_cloud_potion:1b}}}] at @s unless block ~ ~-1 ~ air run summon armor_stand ~ ~ ~ {Invisible:1b, Invulnerable:1b, Tags:["smoke_cloud"]}
execute as @e[type=potion, nbt={Item:{tag:{smoke_cloud_potion:1b}}}] at @s unless block ~ ~-1 ~ air run kill @s

execute as @e[type=armor_stand, tag=smoke_cloud] run scoreboard players add @s armor_stand_kill_time 1
execute as @e[type=armor_stand, tag=smoke_cloud, scores={armor_stand_kill_time=200..}] run kill @s
execute at @e[type=armor_stand, tag=smoke_cloud] run particle campfire_signal_smoke ~ ~ ~ 10 4 10 0.01 500 normal




execute as @e[type=potion, nbt={Item:{tag:{cobweb_potion:1b}}}] at @s unless block ~ ~-1 ~ air run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 cobweb replace air
execute as @e[type=potion, nbt={Item:{tag:{cobweb_potion:1b}}}] at @s unless block ~ ~-1 ~ air run kill @s


execute as @e[type=potion, nbt={Item:{tag:{drop_potion:1b}}}] at @s unless block ~ ~-1 ~ air run tag @a[distance=..3] add butterfingers
execute as @e[type=potion, nbt={Item:{tag:{drop_potion:1b}}}] at @s unless block ~ ~-1 ~ air run schedule function scotbat:clear_butterfingers 30s
execute as @e[type=potion, nbt={Item:{tag:{drop_potion:1b}}}] at @s unless block ~ ~-1 ~ air run kill @s

execute as @a[tag=butterfingers] at @s run execute if data entity @s SelectedItem positioned ~ ~0.4 ~ run summon item ^ ^ ^0.3 {Item:{id:"minecraft:stone",Count:1b},Tags:["dropped"], PickupDelay: 40}
execute as @a[tag=butterfingers] at @s run data modify entity @e[type=item,tag=dropped,limit=1] Item set from entity @s SelectedItem
tag @e[type=item] remove dropped
execute as @a[tag=butterfingers] at @s run item replace entity @s weapon.mainhand with air


execute as @e[type=potion, nbt={Item:{tag:{fire_potion:1b}}}] at @s unless block ~ ~-1 ~ air run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 fire replace air
execute as @e[type=potion, nbt={Item:{tag:{fire_potion:1b}}}] at @s unless block ~ ~-1 ~ air run kill @s

execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{false_death_potion:1b}}}] run tag @s add held_potion_of_false_death
execute as @a[tag=held_potion_of_false_death,scores={drink_potion=1..}] run tellraw @a ["",{"selector":"@a[tag=potion_role, limit=1, sort=nearest]"},{"text":"\u0020died"}]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:potion",tag:{false_death_potion:1b}}}] run tag @s remove held_potion_of_false_death

execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{death_potion:1b}}}] run tag @s add death_potion
execute as @a[tag=death_potion,scores={drink_potion=1..}] run kill @s
execute as @a[nbt=!{SelectedItem:{id:"minecraft:potion",tag:{death_potion:1b}}}] run tag @s remove death_potion
scoreboard players reset @a drink_potion

gamerule keepInventory true

function scotbat:egg_check

execute as @a[scores={respawned=1..}, tag=dragon_egg_role] at @s run gamerule keepInventory false
execute as @a[scores={respawned=1..}, tag=dragon_egg_role] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:dragon_egg", Count:1}, PickupDelay: 100}
execute as @a[scores={respawned=1..}] run clear @s dragon_egg
scoreboard players set @a[scores={respawned=1..}] respawned 0

execute as @a[tag=dragon_egg_role, limit=1] at @s run effect give @s resistance 1 1 true 
execute as @a[tag=dragon_egg_role, limit=1] at @s run effect give @s strength 1 0 true
execute as @a[tag=dragon_egg_role, limit=1] at @s run attribute @s generic.max_health modifier add 455b6f10-31fd-436b-bf3e-585df8e9ef8f "dragon_egg" 10 add
execute as @a[tag=!dragon_egg_role] at @s run attribute @s generic.max_health modifier remove 455b6f10-31fd-436b-bf3e-585df8e9ef8f

