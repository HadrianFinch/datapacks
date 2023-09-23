tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
# execute if score #version LastLifeconfig matches 1 run tellraw @a {"text":"Third Life started!","color":"green"}
# execute if score #version LastLifeconfig matches 2 run tellraw @a {"text":"Last Life started!","color":"red"}

execute if score #recipe LastLifeconfig matches 1 run tellraw @a {"text":"Custom recipes enabled","color":"gray"}
execute if score #recipe LastLifeconfig matches 0 run tellraw @a {"text":"Custom recipes disabled","color":"gray"}

execute if score #border LastLifeconfig matches 1 run tellraw @a {"text":"A border has been set at 1000 blocks","color":"gray"}
execute if score #border LastLifeconfig matches 0 run tellraw @a {"text":"A world border was not set","color":"gray"}

execute if score #boogey LastLifeconfig matches 1 run tellraw @a {"text":"Boogeyman will occur. Use /trigger LastLifeRound set XXX to set how long the rounds are, in minutes.","color":"gray"}
execute if score #boogey LastLifeconfig matches 0 run tellraw @a {"text":"Boogieman will not occur","color":"gray"}

tellraw @a {"text":"120 second grace period started","color":"gray"}

execute as @a at @s run playsound block.note_block.banjo master @s ~ ~ ~ 1 2

#border
execute if score #border LastLifeconfig matches 1 run worldborder set 1000

#recipes
gamerule doLimitedCrafting false
recipe give @a *
execute if score #recipe LastLifeconfig matches 1 run recipe give @a lastlife:lastlife_tnt
execute if score #recipe LastLifeconfig matches 1 run recipe give @a lastlife:lastlife_spore
execute if score #recipe LastLifeconfig matches 1 run recipe give @a lastlife:lastlife_nametag
execute if score #recipe LastLifeconfig matches 1 run recipe give @a lastlife:lastlife_saddle
execute if score #recipe LastLifeconfig matches 1 run recipe take @a minecraft:enchanting_table
execute if score #recipe LastLifeconfig matches 1 run recipe take @a minecraft:bookshelf

execute as @a run tag @s add canCraftLifes
execute as @a run recipe take @s lastlife:lastlife_newlife

#scedule 30 second grace period
schedule function last_life:grace 120s
team join gracelife @a
scoreboard players reset @a LastLifeLifes
execute if score #recipe LastLifeconfig matches 1 run function last_life:enchanter

#remove not needed scoreboards
scoreboard objectives remove LastLifeVers
scoreboard objectives remove LastLifeRecipe
scoreboard objectives remove LastLifeBorder
scoreboard objectives remove LastLifeBoogeyc
scoreboard objectives remove LastLifeStart
#woofer was here
#timer
scoreboard players set #tick LastLifeTimer 0
scoreboard players set $second LastLifeTimer 0
scoreboard players set $minute LastLifeTimer 0

#boogey round trigger
scoreboard players set #running LastLifeRound 0
execute if score #boogey LastLifeconfig matches 1.. run scoreboard players enable @a LastLifeRound


