execute as @s run advancement revoke @s only lastlife:life_crafting
execute as @s run clear @s knowledge_book

execute as @s[tag=!canCraftLifes] run return 0

execute as @s at @s run tellraw @s ["",{"text":"You gained a life!","color":"green"}]
execute as @s at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 50 normal @a
execute as @s at @s run playsound ui.toast.challenge_complete master @a ~ ~ ~ .75 1
execute as @s at @s[team=!0life] run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
execute as @s run scoreboard players add @s[team=!0life] LastLifeLifes 1

execute as @s run recipe take @s lastlife:lastlife_newlife