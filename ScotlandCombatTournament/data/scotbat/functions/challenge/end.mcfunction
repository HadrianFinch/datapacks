execute if score @s challenge_completed_stars matches 1 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]}
execute if score @s challenge_completed_stars matches 2 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 2
execute if score @s challenge_completed_stars matches 3 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 3
execute if score @s challenge_completed_stars matches 4 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 4
execute if score @s challenge_completed_stars matches 5 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 5
execute if score @s challenge_completed_stars matches 6 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 6
execute if score @s challenge_completed_stars matches 7 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 7
execute if score @s challenge_completed_stars matches 8 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 8
execute if score @s challenge_completed_stars matches 9 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 9
execute if score @s challenge_completed_stars matches 10 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 10
execute if score @s challenge_completed_stars matches 11 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 11
execute if score @s challenge_completed_stars matches 12 run give @s nether_star{display:{Name:'{"text":"Reward Star","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Can be used in crafting","bold":false,"italic":true}']},HideFlags:5,CustomModelData:1025,reward_star:1b,Enchantments:[{}]} 12

playsound ui.toast.challenge_complete master @s ~ ~ ~
# particle totem_of_undying ~ ~ ~ 2 2 2 1 10 normal @a
title @a title {"text":"Challenge Completed","color":"gold"}
tellraw @a [{"selector":"@s", "color": "gold"},{"text":" Completed the challenge!","bold":false,"color":"gold"}]

scoreboard objectives remove challenge_completed_stars
scoreboard objectives remove challenge_complete

# tp @a ~ ~ ~
# spreadplayers ~ ~ 5 15 false @a
# worldborder set 100

# execute as @e[type=armor_stand, tag=challenge_countdown] run kill @s
# bossbar remove challenge_time_left
scoreboard objectives remove challenge_time_left
