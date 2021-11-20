
# summon dtcar =============================================================================================================================

# summon minecart with tags
execute as @s at @s run summon minecart ~ ~ ~ {Invulnerable:1b,Tags:["dtcar"]}
# set its scores
scoreboard players set @e[tag=dtcar, limit=1, sort=nearest] dtcarfuel 0
scoreboard players set @e[tag=dtcar, limit=1, sort=nearest] dtcarmaxfuel 50
scoreboard players set @e[tag=dtcar, limit=1, sort=nearest] dtcarspeed 1
scoreboard players set @e[tag=dtcar, limit=1, sort=nearest] drivesounddelta 0
scoreboard players set @e[tag=dtcar, limit=1, sort=nearest] dtdrivemode 0

# play sound
playsound minecraft:block.anvil.use master @a[distance=..8]

# kill all items needed to craft it
kill @e[type=item, nbt={Item:{id:"minecraft:iron_block", Count:1b}}, distance=..1, limit=1, sort=nearest]
kill @e[type=item, nbt={Item:{id:"minecraft:furnace", Count:1b}}, distance=..1, limit=1, sort=nearest]
kill @s[type=item]
