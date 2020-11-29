
#> Store villager bed position
execute store result score @s VT.Home_X run data get entity @s Brain.memories."minecraft:home".pos.[0]
execute store result score @s VT.Home_Y run data get entity @s Brain.memories."minecraft:home".pos.[1]
execute store result score @s VT.Home_Z run data get entity @s Brain.memories."minecraft:home".pos.[2]

#> Store villager work station position
execute store result score @s VT.Work_X run data get entity @s Brain.memories."minecraft:job_site".pos.[0]
execute store result score @s VT.Work_Y run data get entity @s Brain.memories."minecraft:job_site".pos.[1]
execute store result score @s VT.Work_Z run data get entity @s Brain.memories."minecraft:job_site".pos.[2]

#> Store Villager Level
execute store result score @s VT.Level run data get entity @s VillagerData.level

#> Highlight
effect give @s glowing 2 0 true

#> store inventory
data modify storage minecraft:vt.inv Inventory set from entity @e[type=villager,limit=1,sort=nearest,distance=..20] Inventory