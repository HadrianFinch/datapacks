give @p netherite_axe{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}, {id: "sharpness", lvl: 2}, {id: "fire_aspect", lvl: 1}], display:{Name:'{"text":"Warrior\'s Axe","color":"gold"}'}, Unbreakable: true, HideFlags:1,RepairCost:100}

give @p netherite_sword{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}, {id: "sharpness", lvl: 2}, {id: "thorns", lvl: 5}, {id: "knockback", lvl: 4}], display:{Name:'{"text":"Defender\'s Sword","color":"gold"}'}, Unbreakable: true, HideFlags:1,RepairCost:100}

give @p wooden_pickaxe{Enchantments: [{id:"minecraft:vanishing_curse",lvl:1s}, {id: "efficiency", lvl: 10}], Unbreakable: true, display:{Name:'{"text":"Builder\'s Pickaxe","color":"gold"}'},HideFlags:1,RepairCost:100}
give @p wooden_shovel{Enchantments: [{id:"minecraft:vanishing_curse",lvl:1s}, {id: "efficiency", lvl: 10}], Unbreakable: true, display:{Name:'{"text":"Builder\'s Shovel","color":"gold"}'},HideFlags:1,RepairCost:100}
give @p wooden_axe{Enchantments: [{id:"minecraft:vanishing_curse",lvl:1s}, {id: "efficiency", lvl: 20}], Unbreakable: true, display:{Name:'{"text":"Builder\'s Axe","color":"gold"}'},HideFlags:1,RepairCost:100}

give @p bow{display:{Name:'{"text":"Ranger\'s Bow","color":"gold"}'},HideFlags:1,RepairCost:100,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}, {id:"minecraft:power",lvl:3s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:looting",lvl:5s},{id:"minecraft:mending",lvl:1s}]}

give @p minecraft:potion{CustomPotionEffects:[{Id:31,Amplifier:2,Duration:4800,ShowParticles:0b}],CustomPotionColor:7131193,display:{Name:'"Raid Potion"'}}

give @p elytra{Enchantments: [{id: "mending", lvl:1}]}
give @p netherite_boots{display:{Name:'{"text":"Dasher\'s Boots","color":"aqua","bold":true}'},HideFlags:7,Unbreakable:1b,dasher_boots:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:20s},{id:"minecraft:depth_strider",lvl:14s},{id:"minecraft:frost_walker",lvl:3s},{id:"minecraft:soul_speed",lvl:8s},{id:"minecraft:swift_sneak",lvl:8s}],Trim:{material:"minecraft:diamond",pattern:"minecraft:wayfinder"}} 1

give @p nether_star{display:{Name:'{"text":"+ Regeneration Aura +","color":"green"}',Lore:['{"text":"Hold in offhand to activate","color":"dark_green","italic":true}']},regen_aura:1b,Enchantments:[{}]} 1
give @p nether_star{display:{Name:'{"text":"- Wither Aura -","color":"red"}',Lore:['{"text":"Hold in offhand to activate","color":"dark_red","italic":true}']},wither_aura:1b,Enchantments:[{}]} 1

summon minecraft:allay ~ ~1 ~ {CustomName:'"Guardian Angel"', Attributes:[{Name:"minecraft:generic.flying_speed",Base:0.4}, {Name:"minecraft:generic.movement_speed", Base: 0.4}], CustomNameVisible:1, Passengers:[{id:"minecraft:iron_golem",CustomName:'"Guardian Angel"',CustomNameVisible:1,Silent:1,Invulnerable:1, Attributes: [{Name:"minecraft:generic.flying_speed",Base:0.4}, {Name:"minecraft:generic.movement_speed", Base: 0.4}], ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}]}

give @p trident{display:{Name:'{"text":"Oceanmaster\'s Wake","color":"blue","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:impaling",lvl:20s},{id:"minecraft:riptide",lvl:10s}]} 1
give @p trident{display:{Name:'{"text":"Oceanmaster\'s Might","color":"aqua","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:90s},{id:"minecraft:impaling",lvl:20s},{id:"minecraft:channeling",lvl:1s}]} 1

give @p golden_helmet{display:{Name:'{"text":"Oceanmaster\'s Crown","color":"dark_aqua","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,oceanmaster_crown:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:100s},{id:"minecraft:respiration",lvl:100s},{id:"minecraft:aqua_affinity",lvl:100s}]} 1

give @p leather_chestplate{display:{Name:'{"text":"Cloak of Invisbility","color":"dark_gray","bold":true,"italic":false}',color:0},HideFlags:69,Unbreakable:1b,invisibility_cloak:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1

give @p crossbow{display:{Name:'{"text":"Hunter\'s Crossbow","color":"dark_red","bold":false,"italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:multishot",lvl:3s},{id:"minecraft:piercing",lvl:120s},{id:"minecraft:quick_charge",lvl:3s}],ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:100b,Explosions:[{Type:2,Flicker:1b,Colors:[I;16711680],FadeColors:[I;16711680]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:120b,Explosions:[{Type:2,Flicker:1b,Colors:[I;16711680],FadeColors:[I;16711680]}]}}}],Charged:1b} 1