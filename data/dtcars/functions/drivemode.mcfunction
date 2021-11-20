
# switch drivemode =============================================================================================================================

# set drivemode to 1
execute as @e[tag=dtcar, scores={dtdrivemode=0}] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:tripwire_hook", Count:1b}}, distance=..1] run scoreboard players set @s dtdrivemode 2
# give player tripwire hook
execute as @e[tag=dtcar, scores={dtdrivemode=2}] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:tripwire_hook", Count:1b}}, distance=..1] run give @p tripwire_hook
# kill tripwire hook
execute as @e[tag=dtcar, scores={dtdrivemode=2}] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:tripwire_hook", Count:1b}}, distance=..1]

# set drivemode to 0
execute as @e[tag=dtcar, scores={dtdrivemode=1}] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:tripwire_hook", Count:1b}}, distance=..1] run scoreboard players set @s dtdrivemode 3
# give player tripwire hook
execute as @e[tag=dtcar, scores={dtdrivemode=3}] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:tripwire_hook", Count:1b}}, distance=..1] run give @p tripwire_hook
# kill tripwire hook
execute as @e[tag=dtcar, scores={dtdrivemode=3}] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:tripwire_hook", Count:1b}}, distance=..1]

# set drive modes accordingly
scoreboard players set @e[scores={dtdrivemode=2}] dtdrivemode 1
scoreboard players set @e[scores={dtdrivemode=3}] dtdrivemode 0
