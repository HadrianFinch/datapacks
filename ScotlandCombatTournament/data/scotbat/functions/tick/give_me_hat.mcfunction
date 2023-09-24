scoreboard objectives add GiveMeAHat trigger

execute as @p[scores={GiveMeAHat=1..}] run give @p carved_pumpkin{display:{Name:'{"text":"Sentient Hat","color":"gold","bold":true}',Lore:['{"text":"Its High Noon!","color":"yellow","bold":true,"italic":true}']},Unbreakable:1b,CustomModelData:3001} 1
execute as @p[scores={GiveMeAHat=1..}] run scoreboard players set @s GiveMeAHat 0