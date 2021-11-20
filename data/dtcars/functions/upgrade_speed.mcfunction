
# increment score
scoreboard players add @s dtcarspeed 1

# play sound
playsound minecraft:item.axe.scrape master @a[distance=..8]

# kill redstone_block
kill @e[type=item, nbt={Item:{id:"minecraft:redstone_block", Count:1b}}, limit=1, sort=nearest, distance=..1]
