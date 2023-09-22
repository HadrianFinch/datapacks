
execute at @e[type=arrow,nbt={inGround:1b, Color:9838638}] run setblock ~ ~ ~ water

execute at @e[type=arrow,nbt={inGround:1b, Color:9838638}] run summon creeper ~ ~ ~ {ignited: 1b, Fuse: 0s, ExplosionRadius: 100}

execute at @e[type=arrow,nbt={inGround:1b, Color:9838638}] run setblock ~ ~ ~ air

kill @e[type=arrow,nbt={inGround:1b, Color:9838638}]