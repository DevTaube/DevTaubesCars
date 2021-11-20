
# increment score
scoreboard players add @s dtcarmaxfuel 5

# play sound
playsound minecraft:block.anvil.land master @a[distance=..8]

# kill iron
kill @e[type=item, nbt={Item:{id:"minecraft:iron_ingot", Count:1b}}, limit=1, sort=nearest, distance=..1]
