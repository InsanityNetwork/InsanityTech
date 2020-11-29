
# Enable trigger
scoreboard players enable @a VT.Brain
## Tick Villager Tools
# Get data & print message
execute as @a[scores={VT.Brain=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,distance=..20] run function insanity:villager/brain
# Not found message
execute as @a[scores={VT.Brain=1..}] at @s unless entity @e[type=villager,limit=1,sort=nearest,distance=..20] run function insanity:villager/not_found