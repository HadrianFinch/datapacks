##
 # hight.mcfunction
 # 
 #
 # Created by .
##
execute store result score @s crafting.pos run data get entity @s Pos[1] 10

scoreboard players operation @s crafting.pos %= crafting.dummy crafting.math

tag @s add crafting.hight.set