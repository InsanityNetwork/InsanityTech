
#> Reduce/Disable drops
execute as @e[type=#insanity:reduce_drops, tag=!reduced] run function insanity:reduce
execute as @e[type=#insanity:disable_drops, tag=!disabled] run function insanity:disable

#> Renewable shulkers
execute as @e[type=shulker,nbt={ActiveEffects:[{Id:25b}]}] at @s run function insanity:duplicate

#> Time played
execute as @a run function insanity:time