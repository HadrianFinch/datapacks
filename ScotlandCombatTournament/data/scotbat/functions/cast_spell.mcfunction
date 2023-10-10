# execute as @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["ray"]}
# execute as @e[tag=ray,tag=!rotate] at @s run tp @s ~ ~ ~ facing entity @p
# tag @e[tag=ray] add rotate
# execute as @e[tag=ray] at @s run tp @s ^ ^ ^-1
# execute as @e[tag=ray] at @s unless block ~ ~-1 ~ air run summon minecraft:sheep ~ ~ ~ {Tags:["sheep"]}
# execute as @e[tag=sheep] at @s run kill @e[tag=ray,distance=..2]

execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{alarm_spell: 1b}}]}] at @s run summon armor_stand ~ ~ ~ {Invisible: true, Tags:["alarm_area", "Marker"]}
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{cure_wounds_spell: 1b}}]}] at @s run effect give @a[distance=..4, tag=wizard_role] instant_health 1 4


execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{invisibility_spell: 1b}}]}] at @s positioned ^ ^ ^3 run effect give @p[distance=..5] invisibility 600 1 true

execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{aid_spell: 1b}}]}] at @s run effect give @a[distance=..5] health_boost 600 1
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{aid_spell: 1b}}]}] at @s run effect give @a[distance=..5] absorption 300 2
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{aid_spell: 1b}}]}] at @s run effect give @a[distance=..5] instant_health 1 3

execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{darkvision_spell: 1b}}]}] at @s positioned ^ ^ ^3 run effect give @p[distance=..5] night_vision 600 0 true

execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{find_traps_spell: 1b}}]}] at @s run effect give @e[distance=..20, type=tnt_minecart] glowing 20
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{find_traps_spell: 1b}}]}] at @s run effect give @e[distance=..20, type=pufferfish] glowing 20
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{find_traps_spell: 1b}}]}] at @s run effect give @e[distance=..20, type=armor_stand] glowing 20



execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{lightning_spell: 1b}}]}] at @s run execute at @e[distance=5..60, type=!lightning_bolt] run summon lightning_bolt ~ ~ ~
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{fireball_spell: 1b}}]}] at @s run summon fireball ^ ^ ^2 {ExplosionPower: 20, Motion:[0.0, 0.0, 100.0]}

execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{clairvoyance_spell: 1b}}]}] at @s run gamemode spectator
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{clairvoyance_spell: 1b}}]}] at @s run tag @s add temp_spectator
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{clairvoyance_spell: 1b}}]}] at @s run schedule function scotbat:clear_spectator_temp 400s



execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{haste_spell: 1b}}]}] at @s positioned ^ ^ ^3 run effect give @p speed 300 1
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{haste_spell: 1b}}]}] at @s positioned ^ ^ ^3 run effect give @p haste 300 2
execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{haste_spell: 1b}}]}] at @s positioned ^ ^ ^3 run effect give @p jump_boost 300 1


# execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{fly_spell: 1b}}]}] at @s positioned ^ ^ ^3 run tag @p add temp_fly
# execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{fly_spell: 1b}}]}] at @s positioned ^ ^ ^3 run data modify entity @s abilities.mayfly set value 1b
# execute as @a[nbt={Inventory:[{Slot: -106b, id: "minecraft:enchanted_book", tag:{fly_spell: 1b}}]}] at @s positioned ^ ^ ^3 run schedule function scotbat:clear_flight_temp 240s




item replace entity @s weapon.offhand with minecraft:air

