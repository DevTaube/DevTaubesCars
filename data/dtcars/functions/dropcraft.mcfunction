
# check for items on ground =============================================================================================================================

# car creation
execute as @e[type=item, nbt={Item:{id:"minecraft:minecart", Count:1b}}] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:furnace", Count:1b}}, distance=..1] if entity @e[type=item, nbt={Item:{id:"minecraft:iron_block", Count:1b}}, distance=..1] run function dtcars:spawn

# car destruction
execute as @e[type=item, nbt={Item:{id:"minecraft:shears", Count:1b}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1] at @s run function dtcars:destroy
