##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##
execute as @e[type=armor_stand,tag=crafting.armor.table,tag=!crafting.hight.set] at @s run function crafting:get/hight


execute as @e[type=armor_stand,tag=crafting.armor.table,tag=crafting.hight.set,scores={crafting.pos=0}] at @s run setblock ~ ~ ~ dropper[facing=down]{CustomName:'{"text":"Upgraded Brewing Stand"}'} destroy
execute as @e[type=armor_stand,tag=crafting.armor.table,tag=crafting.hight.set,scores={crafting.pos=0}] at @s align xyz run summon item_frame ~ ~1 ~ {NoGravity:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:0b,Tags:["crafting.itemframe"]}
execute as @e[type=armor_stand,tag=crafting.armor.table,tag=crafting.hight.set,scores={crafting.pos=0}] at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Marker:1b,Tags:["crafting.stand.table","crafting.stand"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b}]}

execute as @e[type=armor_stand,tag=crafting.armor.table,tag=crafting.hight.set,scores={crafting.pos=1..}] at @s align y run setblock ~ ~1 ~ dropper[facing=down]{CustomName:'{"text":"Upgraded Brewing Stand"}'} destroy
execute as @e[type=armor_stand,tag=crafting.armor.table,tag=crafting.hight.set,scores={crafting.pos=1..}] at @s align xyz run summon item_frame ~ ~2 ~ {NoGravity:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:0b,Tags:["crafting.itemframe"]}
execute as @e[type=armor_stand,tag=crafting.armor.table,tag=crafting.hight.set,scores={crafting.pos=1..}] at @s align y run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Marker:1b,Tags:["crafting.stand.table","crafting.stand"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b}]}


execute as @e[type=armor_stand,tag=crafting.armor.table,tag=crafting.hight.set] run kill @s


execute as @e[type=armor_stand,tag=crafting.stand.table] at @s unless block ~ ~1 ~ dropper run kill @e[tag=crafting.itemframe,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=crafting.stand.table] at @s unless block ~ ~1 ~ dropper run summon item ~ ~1.2 ~ {Item:{id:"goat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Upgraded Brewing Stand","italic":false,"color":"yellow"}'},EntityTag:{id:"minecraft:armor_stand",CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["crafting.armor.table"]}}}}
execute as @e[type=armor_stand,tag=crafting.stand.table] at @s unless block ~ ~1 ~ dropper run kill @e[type=item, nbt={Item:{id:"minecraft:dropper"}}]


execute as @e[type=armor_stand,tag=crafting.stand.table] at @s unless block ~ ~1 ~ dropper run kill @s


execute as @e[type=armor_stand,tag=crafting.stand.table] at @s run function crafting:table/recipes/recipes


execute as @e[tag=crafting.itemframe,nbt=!{Item:{},Invulnerable:0b}] run data modify entity @s Invulnerable set value 1b
execute as @e[tag=crafting.itemframe,nbt={Item:{},Invulnerable:1b}] run data modify entity @s Invulnerable set value 0b
