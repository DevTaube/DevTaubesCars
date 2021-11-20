
# increment score
scoreboard players add @s dtcarfuel 10

# play sound
playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..8]

# kill charcoal or coal
kill @e[type=item, nbt={Item:{id:"minecraft:coal", Count:1b}}, limit=1, sort=nearest, distance=..1]
kill @e[type=item, nbt={Item:{id:"minecraft:charcoal", Count:1b}}, limit=1, sort=nearest, distance=..1]
