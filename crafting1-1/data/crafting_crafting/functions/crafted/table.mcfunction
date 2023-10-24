##
 # crafted_node_stone.mcfunction
 # 
 #
 # Created by imalittlhigh
##

#revoking the recipe
recipe take @s crafting_crafting:table

#revoking the advancement
advancement revoke @s only crafting_crafting:table_adv

#clearing the crafted knowledge book
clear @s minecraft:knowledge_book

give @s goat_spawn_egg{display:{Name:'{"text":"Upgraded Brewing Stand","italic":false,"color":"yellow"}'},EntityTag:{id:"minecraft:armor_stand",CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["crafting.armor.table"]}} 1
