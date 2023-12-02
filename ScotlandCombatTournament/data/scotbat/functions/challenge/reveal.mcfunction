scoreboard objectives add challenge_completed_stars dummy

# # Challenge 1: Beat The Game
# title @a title {"text":"Get The Dragon Egg","color":"light_purple"}
# tellraw @a {"text": "Your goal is to get the dragon egg", "bold": true}
# tellraw @a {"text": "-- Reward: 2 reward stars", "bold": false}
# tellraw @a {"text": "-- Rules: Teaming optional, win as individual", "bold": false}
# tellraw @a {"text": "", "bold": false}
# tellraw @a {"text": "To complete: Enter the nether, collect blaze rods from a fortress, combine them with Ender Pearls to locate the stronghold, enter the end, and defeat the dragon.", "bold": false}
# tellraw @a {"text": "", "bold": false}
# tellraw @a {"text": "Sub-Challenge: Establish a base/house and show another member of the server. (+1 reward star)", "italic": true}
# spreadplayers ~ ~ 200 100 false @a
# scoreboard players set @a challenge_completed_stars 2
# scoreboard objectives add challenge_complete picked_up:dragon_egg

title @a title {"text":"Secret","color":"red"}
tellraw @a {"text": "Each person has a different challenge", "bold": true}
tellraw @a {"text": "-- Reward: 2 reward stars", "bold": false}
tellraw @a {"text": "-- Rules: If anyone else guesses your challenge, you fail. You can formally guess each person's challenge once.", "bold": false}

tag @a remove done
tag @a remove challenge_next


tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Steal the dragon egg", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next


tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Don't call mobs by their names for 30 minutes. (you must talk to other people during this time)", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next


tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Not be IT in the game of tag, if you are IT at the end of the session, you fail", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next

tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Kill another player by droping an anvil on them", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next

tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Get another player to accuse you of a task. Whatever they say is now your real task. They would have to guess the wording of this exact text to make you fail.", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next

tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Starting with grass seeds, trade with other players all the way up to a golden apple", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next


tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Convince another player to jump off a clif", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next

tag @r[tag=!done] add challenge_next
tellraw @a[tag=challenge_next] {"text": "-- YOUR CHALLENGE: Don't call mobs by their names for 30 minutes. (you must talk to other people during this time)", "bold": false}
tag @a[tag=challenge_next] add done
tag @a remove challenge_next

tellraw @a {"text": "", "bold": false}
tellraw @a {"text": "Sub-Challenge: No sub challenges today!", "italic": true}

tag @a remove done

# title @a title {"text":"Scavanger Hunt","color":"green"}
# tellraw @a {"text": "Your goal is to find the 6 hidden barrels within 300 blocks of spawn", "bold": true}
# tellraw @a {"text": "-- Reward: 1 reward star + loot for each", "bold": false}
# tellraw @a {"text": "-- Rules: The boxes are in plain sight, you need not place nor break blocks to find them", "bold": false}
# tellraw @a {"text": "", "bold": false}
# tellraw @a {"text": "Sub-Challenge: No sub challenges today!", "italic": true}

#### Main Challenges
# Scavenger hunt

# X Work on you base
# ancient city - who dies the least
# build a shop / store at spawn
# design and build a puzzle / maze / ??
# make a mini-game
# bingo / lockout
# trade basses and leave an easter egg
# invention compatition, and then its real
# build a sky island
# anvil trap
# use your special ability to make someyhing for the other players
# Base seige


#### Subchallenges
# add a water feature to your base, fountian, aquarium, etc


# work on base
# tag game
# give another player a challenge and have them accept it
# make a mini shrubery in your base that will make the knights of Ni proud


# Fight prep
# title @a title {"text":"Prepare for combat","color":"blue"}
# bossbar add challenge_time_left "Time Remaining"
# bossbar set challenge_time_left players @a
# bossbar set challenge_time_left color blue
# bossbar set challenge_time_left max 72000
# bossbar set challenge_time_left max 200
# bossbar set challenge_time_left style progress
# bossbar set challenge_time_left visible true
# bossbar set challenge_time_left visible true
# scoreboard objectives add challenge_time_left dummy
# summon armor_stand ~ ~10 ~ {Invisible:1b, Invulnerable:1b, Marker:1b, NoAI:1b, NoGravity:1b, Tags:["challenge_countdown"]}
# scoreboard players set @e[tag=challenge_countdown] challenge_time_left 72000
# scoreboard players set @e[tag=challenge_countdown] challenge_time_left 200
