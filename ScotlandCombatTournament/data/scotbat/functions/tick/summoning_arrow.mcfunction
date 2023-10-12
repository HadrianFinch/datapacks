execute at @e[type=arrow,nbt={inGround:1b, Color:496239}] run tp @a[tag=tp_arrow_1] ~ ~ ~
kill @e[type=arrow,nbt={inGround:1b, Color:496239}]

execute at @e[type=arrow,nbt={inGround:1b, Color:12133726}] run tp @a[tag=tp_arrow_2] ~ ~ ~
kill @e[type=arrow,nbt={inGround:1b, Color:12133726}]

# execute as @a run fill ~-16 ~-16 ~-16 ~16 ~16 ~16 raw_gold_block replace repeating_command_block
