schedule function homes:tick 1t
scoreboard players enable @a[tag=home_allowed] sethome
execute as @a[scores={sethome=1..}] at @s run function homes:trigger_sethome
scoreboard players enable @a[tag=home_allowed] delhome
execute as @a[scores={delhome=1..}] run function homes:trigger_delhome
scoreboard players enable @a[tag=home_allowed] homes
execute as @a[scores={homes=1..}] run function homes:trigger_homes
scoreboard players enable @a[tag=home_allowed] home
execute as @a[scores={home=1..}] run function homes:trigger_home
scoreboard players enable @a[tag=home_allowed] namehome
execute as @a[scores={namehome=1..}] run function homes:trigger_namehome
execute as @a[scores={homes.target=1..}] run function homes:try_to_try_to_try_to_go_home