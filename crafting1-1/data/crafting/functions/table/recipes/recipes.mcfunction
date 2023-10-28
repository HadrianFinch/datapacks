##
 # test.mcfunction
 # 
 #
 # Created by .
##

#Clearing all items from the droppper if there is no item in the itemframe
execute as @s[tag=crafting.crafted] at @s positioned ~ ~1.5 ~ unless entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe,nbt={Item:{}}] run data remove block ~ ~-0.5 ~ Items
execute as @s[tag=crafting.crafted] at @s positioned ~ ~1.5 ~ unless entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe,nbt={Item:{}}] run tag @s add sound_not_played
#changing item in itemframe to air if no recipe is matched in the dropper
execute as @s[tag=crafting.crafted.smoke_bomb] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/smoke_bomb positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.cobweb] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/cobweb positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.fire] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/fire positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.butterfingers] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/butterfingers positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.false_death] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/false_death positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.escape] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/escape positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.power] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/power positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.life] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/life positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.luck] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/luck positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.resistance] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/resistance positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
execute as @s[tag=crafting.crafted.levitation] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/potions/resistance positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
# execute as @s[tag=crafting.crafted.rocket1] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/rockets/rocket1 positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}
# execute as @s[tag=crafting.crafted.test3] at @s positioned ~ ~1 ~ unless predicate crafting:recipes/test/test3 positioned ~ ~0.5 ~ run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:air",Count:1b}

execute as @s[tag=crafting.crafted, tag=sound_not_played] at @s run playsound entity.player.levelup master @a ~ ~ ~
execute as @s[tag=sound_not_played] run tag @s remove sound_not_played

#removing all tags to check if item is crafted and which recipe is used
tag @s remove crafting.crafted

tag @s remove crafting.crafted.smoke_bomb
tag @s remove crafting.crafted.cobweb
tag @s remove crafting.crafted.fire
tag @s remove crafting.crafted.butterfingers
tag @s remove crafting.crafted.false_death
tag @s remove crafting.crafted.escape
tag @s remove crafting.crafted.power
tag @s remove crafting.crafted.life
tag @s remove crafting.crafted.luck
tag @s remove crafting.crafted.resistance
tag @s remove crafting.crafted.levitation
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


#recipe example 2
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/cobweb run tag @s add crafting.crafted.cobweb
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/cobweb run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.cobweb] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:lingering_potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:lingering_potion",Count:1b, tag:{display:{Name:'{"text":"Cobweb Potion"}'},cobweb_potion:1b,Potion:"minecraft:empty",CustomPotionColor:15198183}}

#recipe example 2
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/fire run tag @s add crafting.crafted.fire
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/fire run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.fire] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:lingering_potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:lingering_potion",Count:1b, tag:{display:{Name:'{"text":"Molotov Cocktail"}'},fire_potion:1b,Potion:"minecraft:empty",CustomPotionColor:15479860}}

#recipe 3
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/butterfingers run tag @s add crafting.crafted.butterfingers
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/butterfingers run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.butterfingers] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:splash_potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:splash_potion",Count:1b, tag:{display:{Name:'{"text":"Butterfingers Potion"}'},drop_potion:1b,Potion:"minecraft:empty",CustomPotionColor:13474162}}

#recipe 4
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/false_death run tag @s add crafting.crafted.false_death
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/false_death run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.false_death] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:potion",Count:1b, tag:{CustomPotionEffects:[{Id:1,Duration:1200,ShowParticles:0b},{Id:14,Duration:1200,ShowParticles:0b}],CustomPotionColor:15605969,display:{Name:'"Potion of False Death"'}, false_death_potion:1b}}

#recipe 5
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/escape run tag @s add crafting.crafted.escape
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/escape run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.escape] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:potion",Count:1b, tag:{CustomPotionEffects:[{Id:1,Amplifier:126,Duration:400},{Id:8,Amplifier:9,Duration:400},{Id:10,Amplifier:2,Duration:400},{Id:30,Duration:400}],CustomPotionColor:3071999,display:{Name:'"Potion of escape"'}}}

#recipe 6
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/power run tag @s add crafting.crafted.power
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/power run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.power] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:potion",Count:1b, tag:{CustomPotionEffects:[{Id:1,Amplifier:9,Duration:1200},{Id:3,Amplifier:127,Duration:1200},{Id:5,Amplifier:127,Duration:1200},{Id:8,Amplifier:4,Duration:1200},{Id:10,Amplifier:31,Duration:1200},{Id:11,Amplifier:4,Duration:1200},{Id:12,Duration:1200},{Id:13,Duration:1200},{Id:14,Duration:1200},{Id:16,Duration:1200},{Id:21,Amplifier:127,Duration:1200},{Id:22,Amplifier:127,Duration:1200},{Id:23,Amplifier:127,Duration:-1},{Id:26,Amplifier:127,Duration:1200},{Id:30,Duration:1200},{Id:32,Duration:1200}],CustomPotionColor:10420175,display:{Name:'"Potion of Unlimited Power!"'}, death_potion:1b}}

#recipe 6
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/life run tag @s add crafting.crafted.life
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/life run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.life] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:potion",Count:1b, tag:{CustomPotionEffects:[{Id:10,Amplifier:3,Duration:200,ShowParticles:0b},{Id:21,Duration:-1,ShowParticles:0b}],CustomPotionColor:16739226,display:{Name:'"Potion of Life"'}}}

#recipe 6
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/luck run tag @s add crafting.crafted.luck
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/luck run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.luck] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:potion",Count:1b, tag:{CustomPotionEffects:[{Id:26,Amplifier:4,Duration:24000}],CustomPotionColor:4978176,display:{Name:'"Potion of Luck"'}}}

#recipe 7
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/resistance run tag @s add crafting.crafted.resistance
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/resistance run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.resistance] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:potion",Count:1b, tag:{CustomPotionEffects:[{Id:11,Amplifier:1,Duration:9840},{Id:12,Duration:9840}],CustomPotionColor:5933789,display:{Name:'"Potion of Resistance"'}}}

#recipe 8
#which recipe
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/levitation run tag @s add crafting.crafted.levitation
#tagging that something is crafted
execute as @s at @s positioned ~ ~1 ~ if predicate crafting:recipes/potions/levitation run tag @s add crafting.crafted
#setting the item in the frame to the crafting result
execute as @s[tag=crafting.crafted.levitation] at @s positioned ~ ~1 ~ unless data entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item{id:"minecraft:splash_potion",Count:1b} run data modify entity @e[type=item_frame,limit=1,sort=nearest,tag=crafting.itemframe] Item set value {id:"minecraft:splash_potion",Count:1b, tag:{CustomPotionEffects:[{Id:25,Amplifier:4,Duration:2400}],CustomPotionColor:16186075,display:{Name:'"Potion of Levitation"'}}}

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

# execute if data entity @s {}
