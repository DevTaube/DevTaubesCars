
# driving sound =============================================================================================================================

# increase sound delta if car is driving
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1.5, scores={dtcarfuel=1..}] at @s run scoreboard players add @s drivesounddelta 1
# make driving sound if drivesounddelta is more or equal to threshhold and car is driving
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1.5, scores={dtcarfuel=1..}] at @s if score @s drivesounddelta >= threshhold drivesounddelta run playsound minecraft:entity.minecart.inside master @a[distance=..8]
# set drivesounddelta to 0 if drivesounddelta is more or equal to threshhold and car is driving
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1.5, scores={dtcarfuel=1..}] at @s if score @s drivesounddelta >= threshhold drivesounddelta run scoreboard players set @s drivesounddelta 0

# set sound delta to threshhold if car not driving
execute as @e[tag=dtcar] at @s unless entity @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}, distance=..2.5] run scoreboard players operation @s drivesounddelta = threshhold drivesounddelta

# stop sound if no minecart nearby that has fuel and minecart has no fuel
execute as @e[tag=dtcar, scores={dtcarfuel=0}] at @s unless entity @e[tag=dtcar, distance=..8, scores={dtcarfuel=1..}] run stopsound @a[distance=..8] master minecraft:entity.minecart.inside
# stop sound if no player with tripwire hook nearby
execute as @e[tag=dtcar] at @s unless entity @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}, distance=..8] run stopsound @a[distance=..8] master minecraft:entity.minecart.inside
