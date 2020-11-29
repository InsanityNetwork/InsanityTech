
#> Get villager data
execute as @e[type=villager,limit=1,sort=nearest,distance=..20] run function insanity:villager/data
tellraw @s {"text":""}

#> Selected villager message
tellraw @s [{"text":"Selected: ","color":"dark_gray"},{"selector": "@e[type=villager,limit=1,sort=nearest,distance=..20]"}]

#> Level message
execute if score @e[type=villager,limit=1,sort=nearest,distance=..20] VT.Level matches 1 run tellraw @s [{"text":"Level: ","color":"gray"},{"text":"Novice","color":"white"}]
execute if score @e[type=villager,limit=1,sort=nearest,distance=..20] VT.Level matches 2 run tellraw @s [{"text":"Level: ","color":"gray"},{"text":"Apprentice","color":"white"}]
execute if score @e[type=villager,limit=1,sort=nearest,distance=..20] VT.Level matches 3 run tellraw @s [{"text":"Level: ","color":"gray"},{"text":"Journeyman","color":"white"}]
execute if score @e[type=villager,limit=1,sort=nearest,distance=..20] VT.Level matches 4 run tellraw @s [{"text":"Level: ","color":"gray"},{"text":"Expert","color":"white"}]
execute if score @e[type=villager,limit=1,sort=nearest,distance=..20] VT.Level matches 5 run tellraw @s [{"text":"Level: ","color":"gray"},{"text":"Master","color":"white"}]
tellraw @s {"text":""}

#> Home position message
tellraw @s [{"text":"Home:","color":"gray"},{"text":"         X: ","color":"white"},{"score": {"name":"@e[type=villager,limit=1,sort=nearest,distance=..20]","objective": "VT.Home_X"}},{"text":" Y: ","color":"white"},{"score": {"name":"@e[type=villager,limit=1,sort=nearest,distance=..20]","objective": "VT.Home_Y"}},{"text":" Z: ","color":"white"},{"score": {"name":"@e[type=villager,limit=1,sort=nearest,distance=..20]","objective": "VT.Home_Z"}}]

#> Job Site position message
tellraw @s [{"text":"Job Site:","color":"gray"},{"text":"     X: ","color":"white"},{"score": {"name":"@e[type=villager,limit=1,sort=nearest,distance=..20]","objective": "VT.Work_X"}},{"text":" Y: ","color":"white"},{"score": {"name":"@e[type=villager,limit=1,sort=nearest,distance=..20]","objective": "VT.Work_Y"}},{"text":" Z: ","color":"white"},{"score": {"name":"@e[type=villager,limit=1,sort=nearest,distance=..20]","objective": "VT.Work_Z"}}]
tellraw @s {"text":""}

#> Inventory message
tellraw @s {"text":"Inventory: ","color":"gray"}
# Slot 1
execute if data storage minecraft:vt.inv Inventory[0] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[0].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[0].id"},{"text":"] ","color":"white"}]
# Slot 2
execute if data storage minecraft:vt.inv Inventory[1] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[1].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[1].id"},{"text":"] ","color":"white"}]
# Slot 3
execute if data storage minecraft:vt.inv Inventory[2] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[2].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[2].id"},{"text":"] ","color":"white"}]
# Slot 4
execute if data storage minecraft:vt.inv Inventory[3] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[3].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[3].id"},{"text":"] ","color":"white"}]
# Slot 5
execute if data storage minecraft:vt.inv Inventory[4] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[4].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[4].id"},{"text":"] ","color":"white"}]
# Slot 6
execute if data storage minecraft:vt.inv Inventory[5] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[5].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[5].id"},{"text":"] ","color":"white"}]
# Slot 7
execute if data storage minecraft:vt.inv Inventory[6] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[6].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[6].id"},{"text":"] ","color":"white"}]
# Slot 8
execute if data storage minecraft:vt.inv Inventory[7] run tellraw @s [{"text":"              ","color":"gray"},{"text":"[","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[7].Count"},{"text":"] ","color":"white"},{"text":" [","color":"white"},{"storage": "minecraft:vt.inv","nbt":"Inventory[7].id"},{"text":"] ","color":"white"}]
tellraw @s {"text":""}


#> Reset trigger
scoreboard players reset @s VT.Brain

#> Reset inventory storage
data remove storage minecraft:vt.inv Inventory