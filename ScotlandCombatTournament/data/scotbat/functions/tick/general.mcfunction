# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s aliveCounter 0
# execute as @a[scores={playerDeath=1..}] run tag @s add respawnExecute
# execute as @a[scores={playerDeath=1..}] run scoreboard players set @s playerDeath 0
# execute as @e[type=player,tag=respawnExecute] run scoreboard players add @s aliveCounter 1
# execute as @a[scores={aliveCounter=1},tag=respawnExecute] run give @s recovery_compass 
# execute as @a[scores={aliveCounter=1..},tag=respawnExecute] run tag @s remove respawnExecut

clear @a[gamemode=survival] enchanting_table
setblock 0 70 0 enchanting_table

kill @e[type=piglin_brute]
kill @e[type=phantom]