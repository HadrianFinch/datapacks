
tag @s add cleric_role
give @s nether_star{HideFlags:1,display:{Name:'{"text":"+ Regeneration Aura +","color":"green"}',Lore:['{"text":"Hold in offhand to activate","color":"dark_green","italic":true}']},regen_aura:1b,Enchantments:[]} 1
give @s nether_star{HideFlags:1,display:{Name:'{"text":"- Wither Aura -","color":"red"}',Lore:['{"text":"Hold in offhand to activate","color":"dark_red","italic":true}']},wither_aura:1b,Enchantments:[]} 1
summon minecraft:allay ~ ~1 ~ {CustomName:'"Guardian Angel"', Attributes:[{Name:"minecraft:generic.flying_speed",Base:0.4}, {Name:"minecraft:generic.movement_speed", Base: 0.4}], CustomNameVisible:1, Passengers:[{id:"minecraft:iron_golem",CustomName:'"Guardian Angel"',CustomNameVisible:1,Silent:1,Invulnerable:1, Attributes: [{Name:"minecraft:generic.flying_speed",Base:0.4}, {Name:"minecraft:generic.movement_speed", Base: 0.4}], ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}]}
