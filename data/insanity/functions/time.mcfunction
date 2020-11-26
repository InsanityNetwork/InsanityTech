


scoreboard players add @s Seconds_Ticks 1
scoreboard players add @s Minutes_Ticks 1
scoreboard players add @s Hours_Ticks 1


execute if score @s Seconds_Ticks matches 20.. run scoreboard players add @s SecondsPlayed 1
execute if score @s Seconds_Ticks matches 20.. run scoreboard players reset @s Seconds_Ticks

execute if score @s Seconds_Ticks matches 1200.. run scoreboard players add @s SecondsPlayed 1
execute if score @s Seconds_Ticks matches 1200.. run scoreboard players reset @s Seconds_Ticks

execute if score @s Seconds_Ticks matches 72000.. run scoreboard players add @s SecondsPlayed 1
execute if score @s Seconds_Ticks matches 72000.. run scoreboard players reset @s Seconds_Ticks

