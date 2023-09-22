scoreboard players set @a LastLifeBooeyMan 0
scoreboard players reset @a LastLifeBoogeyKi
scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 2.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 3.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 4.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 5.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 6.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 7.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 8.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 9.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
execute if score $Boogeymen LastLifeBooeyMan matches 10.. run scoreboard players set @r[scores={LastLifeLifes=2..},limit=1] LastLifeBooeyMan 1
title @a times 20 60 20
execute as @a at @s if score @s LastLifeBooeyMan matches 1 run title @s title {"text":"The Boogeyman.","color":"red"}
execute as @a at @s unless score @s LastLifeBooeyMan matches 1 run title @s title {"text":"NOT the Boogeyman.","color":"green"}
schedule function last_life:boogey/tell 1s