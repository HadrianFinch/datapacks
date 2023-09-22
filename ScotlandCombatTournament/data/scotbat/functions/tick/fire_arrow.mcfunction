

execute at @e[type=arrow,nbt={inGround:1b, Color:12536200}] run fill ~-16 ~-5 ~-16 ~16 ~5 ~16 fire replace air
# execute at @e[type=arrow,nbt={inGround:1b, Color:12536200}] run setblock ~ ~ ~ air

kill @e[type=arrow,nbt={inGround:1b, Color:12536200}]