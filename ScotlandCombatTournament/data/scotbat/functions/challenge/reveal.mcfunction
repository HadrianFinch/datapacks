scoreboard objectives add challenge_completed_stars dummy

# # Challenge 1: Beat The Game
title @a title {"text":"Get The Dragon Egg","color":"light_purple"}
tellraw @a {"text": "Your goal is to get the dragon egg", "bold": true}
tellraw @a {"text": "-- Reward: 2 reward stars", "bold": false}
tellraw @a {"text": "-- Rules: Teaming optional, win as individual", "bold": false}
tellraw @a {"text": "", "bold": false}
tellraw @a {"text": "To complete: Enter the nether, collect blaze rods from a fortress, combine them with Ender Pearls to locate the stronghold, enter the end, and defeat the dragon.", "bold": false}
tellraw @a {"text": "", "bold": false}
tellraw @a {"text": "Sub-Challenge: Establish a base/house and show another member of the server. (+1 reward star)", "italic": true}
spreadplayers ~ ~ 200 100 false @a
scoreboard players set @a challenge_completed_stars 2
scoreboard objectives add challenge_complete picked_up:dragon_egg

# Challenge 2: Scavenger hunt
# Challenge 3: Catch Hadrian
# Challenge 4: Last one standing
# Challenge 5: ancient city
# Challenge 6: Armor trim (full set)

# Challenge x: Fight prep
# title @a title {"text":"Prepare for combat","color":"blue"}
# bossbar add challenge_time_left "Time Remaining"
# bossbar set challenge_time_left players @a
# bossbar set challenge_time_left color blue
# # bossbar set challenge_time_left max 72000
# bossbar set challenge_time_left max 200
# bossbar set challenge_time_left style progress
# bossbar set challenge_time_left visible true
# bossbar set challenge_time_left visible true
# scoreboard objectives add challenge_time_left dummy
# summon armor_stand ~ ~10 ~ {Invisible:1b, Invulnerable:1b, Marker:1b, NoAI:1b, NoGravity:1b, Tags:["challenge_countdown"]}
# # scoreboard players set @e[tag=challenge_countdown] challenge_time_left 72000
# scoreboard players set @e[tag=challenge_countdown] challenge_time_left 200


