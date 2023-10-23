scoreboard players add @a[distance=..3,gamemode=!creative] return_home_time 1
scoreboard players set @a[distance=4..] return_home_time 0
execute if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] if entity @a[distance=..3] run particle enchant ~ ~2 ~ 3 3 3 0.1 4 normal
execute if entity @e[type=item_frame, nbt={Item:{tag:{anchor_point:1b}}}] if entity @a[distance=..3] run particle happy_villager ~ ~2 ~ 1 2 1 3 1 normal

forceload add ~ ~