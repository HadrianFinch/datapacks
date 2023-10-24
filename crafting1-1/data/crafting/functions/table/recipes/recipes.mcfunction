##
 # test.mcfunction
 # 
 #
 # Created by .
##

#Clearing all items from the droppper if there is no item in the itemframe
execute as @s[tag=crafting.crafted] at @s positioned ~ ~1.5 ~ unless entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe,nbt={Item:{}}] run data remove block ~ ~-0.5 ~ Items
#changing item in itemframe to air if no recipe is matched in the dropper
execute as @s[tag=crafting.crafted.smoke_bomb] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/smoke_bomb positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
# execute as @s[tag=crafting.crafted.rocket1] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/rockets/rocket1 positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
# execute as @s[tag=crafting.crafted.test3] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/test/test3 positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}


#removing all tags to check if item is crafted and which recipe is used
tag @s remove crafting.crafted

tag @s remove crafting.crafted.smoke_bomb
# tag @s remove crafting.crafted.test2
# tag @s remove crafting.crafted.test3

#cheching what recipe is used
#recipe example 1
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/smoke_bomb run tag @s add crafting.crafted.smoke_bomb
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/smoke_bomb run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.smoke_bomb] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:lingering_potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:lingering_potion",Count:1b, tag:{display:{Name:'{"text":"Smoke Cloud"}'},smoke_cloud_potion:1b,Potion:"minecraft:empty",CustomPotionColor:9737364}}

# #recipe example 2
# #which recipe
# execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/rockets/rocket1 run tag @s add crafting.crafted.rocket1
# #tagging that something is crafted
# execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/rockets/rocket1 run tag @s add crafting.crafted
# #setting the item in the frame to the crafting result
# execute as @s[tag=crafting.crafted.rocket1] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:firework_rocket",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:firework_rocket",Count:1b}

# #recipe example 3
# #which recipe
# execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/test/test3 run tag @s add crafting.crafted.test3
# #tagging that something is crafted
# execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/test/test3 run tag @s add crafting.crafted
# #setting the item in the frame to the crafting result
# execute as @s[tag=crafting.crafted.test3] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:wooden_sword",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:wooden_sword",Count:1b,tag:{display:{Name:'{"text":"I am so custom"}',Lore:['{"text":"the customest sword ever"}']},Damage:0.9,Enchantments:[{id:"minecraft:sharpness",lvl:10s},{id:"minecraft:looting",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:3,Operation:0,UUID:[I;-1966788,2039563859,-2123628066,-1862249592]}]}}
