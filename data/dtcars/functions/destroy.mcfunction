
# destroy dtcar =============================================================================================================================

# summon items needed to craft the car (no upgrades tho)
summon item ~ ~ ~ {Item:{id:"minecraft:minecart",Count:1b}}
summon item ~ ~ ~ {Item:{id:"minecraft:furnace",Count:1b}}
summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:9b}}

# play sound
playsound entity.item.break master @a[distance=..8]

# kill shears
kill @e[type=item, nbt={Item:{id:"minecraft:shears", Count:1b}}, limit=1, sort=nearest, distance=..1]

# kill @s
kill @s[tag=dtcar]
