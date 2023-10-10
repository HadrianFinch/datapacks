tag @s add wizard_role
give @s carrot_on_a_stick{display:{Name:'{"text":"Wizard\'s Wand of Power","color":"dark_blue","bold":true,"italic":false}'},HideFlags:7,Unbreakable:1b,wizard_wand:1b} 1

give @p written_book{pages:['["",{"text":"1st Level Spells\\n--------------------\\n"},{"text":"* CureWounds","italic":true},{"text":"[2 levels]","italic":true,"color":"green","clickEvent":{"action":"run_command","value":"/give @s[level=2..] enchanted_book{display:{Name:\'{\\"text\\":\\"\\u2764\\ufe0f Cure Wounds \\u2764\\ufe0f\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"1st level\\",\\"bold\\":true,\\"italic\\":true}\']},cure_wounds_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n","color":"reset"},{"text":" Restores 10 hearts\\n to you and 1 player   you look at","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"* Alarm       ","italic":true},{"text":"[3 levels]","italic":true,"color":"green","clickEvent":{"action":"run_command","value":"/give @s[level=3..] enchanted_book{display:{Name:\'{\\"text\\":\\"\\ud83d\\udd14 Alarm \\ud83d\\udd14\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"1st level\\",\\"bold\\":true,\\"italic\\":true}\']},alarm_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n ","color":"reset"},{"text":"Sets an alarm in a 30   block radius area.   Allows you to TP\\n there when a player   enters.","color":"dark_gray"}]','["",{"text":"2nd Level Spells\\n--------------------","bold":true},{"text":"\\n","color":"reset"},{"text":"* Invisibility  ","italic":true,"color":"black"},{"text":"[6 levels]","italic":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/give @s[level=6..] enchanted_book{display:{Name:\'{\\"text\\":\\" Invisibility \\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"2nd level\\",\\"bold\\":true,\\"italic\\":true}\']},invisibility_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n","color":"reset","italic":true},{"text":" Gives true invisibility\\n to a player you look   at. If none, yourself","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"* Aid         ","italic":true,"color":"black"},{"text":"[6 levels]","italic":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/give @s[level=6..] enchanted_book{display:{Name:\'{\\"text\\":\\"+ Aid +\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"2nd level\\",\\"bold\\":true,\\"italic\\":true}\']},aid_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n ","color":"reset"},{"text":"Gives 4 extra hearts   and 6 absorption       hearts to everyone     around you","color":"dark_gray"}]','["",{"text":"2nd Level Spells (cont)\\n--------------------","bold":true},{"text":"\\n","color":"reset"},{"text":"* Darkvision  ","italic":true},{"text":"[4 levels]","italic":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/give @s[level=4..] enchanted_book{display:{Name:\'{\\"text\\":\\"\\ud83d\\udc41\\ufe0f Darkvision \\ud83d\\udc41\\ufe0f\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"2nd level\\",\\"bold\\":true,\\"italic\\":true}\']},darkvision_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n ","color":"reset","italic":true},{"text":"Night Vision to the   player you look at.","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"* Find Traps ","italic":true},{"text":"[4 levels]","italic":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/give @s[level=4..] enchanted_book{display:{Name:\'{\\"text\\":\\"\\ud83e\\udded Find Traps \\ud83e\\udded\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"2nd level\\",\\"bold\\":true,\\"italic\\":true}\']},find_traps_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n ","color":"reset","italic":true},{"text":"Will tell you if there   are traps.","color":"dark_gray"}]','["",{"text":"3rd Level Spells\\n--------------------","bold":true},{"text":"\\n","color":"reset"},{"text":"*LightningBolt ","italic":true},{"text":"[8 levels]","italic":true,"color":"blue","clickEvent":{"action":"run_command","value":"/give @s[level=8..] enchanted_book{display:{Name:\'{\\"text\\":\\"\\u26a1\\ufe0fLightning Bolt\\u26a1\\ufe0f\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"3rd level\\",\\"bold\\":true,\\"italic\\":true}\']},lightning_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n","color":"reset"},{"text":" Summons lightning on   every entity except   around you.","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"* Fireball ","italic":true,"color":"black"},{"text":"    ","color":"reset","italic":true},{"text":"[8 levels]","italic":true,"color":"blue","clickEvent":{"action":"run_command","value":"/give @s[level=8..] enchanted_book{display:{Name:\'{\\"text\\":\\"\\u2604\\ufe0fFireball\\u2604\\ufe0f\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"3rd level\\",\\"bold\\":true,\\"italic\\":true}\']},fireball_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n ","italic":true,"color":"blue"},{"text":"Summons a fireball.   Left click it to launch   in direction of looking.","color":"dark_gray"},{"text":"\\n ","color":"reset"}]','["",{"text":"3rd Level Spells (cont)\\n--------------------","bold":true},{"text":"\\n","color":"reset"},{"text":"*Clairvoyance ","italic":true},{"text":"[11levels]","italic":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/give @s[level=11..] enchanted_book{display:{Name:\'{\\"text\\":\\"/ Clairvoyance /\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"3rd level\\",\\"bold\\":true,\\"italic\\":true}\']},clairvoyance_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n","color":"reset"},{"text":" Spectator mode for   400 seconds.","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"* Haste    ","italic":true},{"text":" ","italic":true,"color":"dark_blue"},{"text":"[12 levels]","italic":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/give @s[level=12..] enchanted_book{display:{Name:\'{\\"text\\":\\"\\u2192 Haste \\u2192\\",\\"color\\":\\"blue\\",\\"bold\\":true,\\"italic\\":false}\',Lore:[\'{\\"text\\":\\"Hold in offhand and use wand to cast\\"}\',\'{\\"text\\":\\"3rd level\\",\\"bold\\":true,\\"italic\\":true}\']},haste_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 1"}},{"text":"\\n","color":"reset"},{"text":" Player you look at   gets Speed 2, Haste 3,\\n Jump Boost 2 for 5\\n min","color":"dark_gray"}]','["",{"text":"4th Level Spells \\n--------------------","bold":true},{"text":"\\n","color":"reset"},{"text":"* ","italic":true,"color":"black"},{"text":"Creative","italic":true,"obfuscated":true,"color":"black"},{"text":" [","color":"light_purple","italic":true},{"text":"94","italic":true,"obfuscated":true,"color":"light_purple"},{"text":" levels]","color":"light_purple","italic":true},{"text":"\\n","color":"reset"},{"text":" gasn dajsk adsa d\\n creative mode for 1 \\n hour and ad I aisd","obfuscated":true,"color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"* ","italic":true},{"text":"iasd isd","italic":true,"obfuscated":true},{"text":" [","color":"light_purple","italic":true},{"text":"343","italic":true,"obfuscated":true,"color":"light_purple"},{"text":" levels]","color":"light_purple","italic":true},{"text":"\\n","color":"reset"},{"text":" gasn dajsk adsa d\\n creative mode for 1 \\n hour and ad I aisd","obfuscated":true,"color":"dark_gray"},{"text":"\\n ","color":"reset"}]'],title:Spellbook,author:ThatSkadoosh,generation:1}

# give @s enchanted_book{display:{Name:'{"text":"🔔 Alarm 🔔","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"1st level","bold":true,"italic":true}']},alarm_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 5
# give @s enchanted_book{display:{Name:'{"text":"❤️ Cure Wounds ❤️","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"1st level","bold":true,"italic":true}']},cure_wounds_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 5

# give @s enchanted_book{display:{Name:'{"text":" Invisibility ","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"2nd level","bold":true,"italic":true}']},invisibility_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 2
# give @s enchanted_book{display:{Name:'{"text":"+ Aid +","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"2nd level","bold":true,"italic":true}']},aid_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3
# give @s enchanted_book{display:{Name:'{"text":"👁️ Darkvision 👁️","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"2nd level","bold":true,"italic":true}']},darkvision_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3
# give @s enchanted_book{display:{Name:'{"text":"🧭 Find Traps 🧭","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"2nd level","bold":true,"italic":true}']},find_traps_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3

# give @s enchanted_book{display:{Name:'{"text":"⚡️Lightning Bolt⚡️","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"3rd level","bold":true,"italic":true}']},lightning_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3
# give @s enchanted_book{display:{Name:'{"text":"☄️Fireball☄️","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"3rd level","bold":true,"italic":true}']},fireball_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3
# give @s enchanted_book{display:{Name:'{"text":"/ Clairvoyance /","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"3rd level","bold":true,"italic":true}']},clairvoyance_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3
# give @s enchanted_book{display:{Name:'{"text":"→ Haste →","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"3rd level","bold":true,"italic":true}']},haste_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3

# give @s enchanted_book{display:{Name:'{"text":"⬆ Fly ⬆","color":"blue","bold":true,"italic":false}',Lore:['{"text":"Hold in offhand and use wand to cast"}','{"text":"4th level","bold":true,"italic":true}']},fly_spell:1b,Enchantments:[{}],StoredEnchantments:[{}]} 3

