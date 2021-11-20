
# increment fuel score if coal is put in =============================================================================================================================

# call add_fuel if coal or charcoal found
execute as @e[tag=dtcar] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:coal", Count:1b}}, limit=1, sort=nearest, distance=..1] if score @s dtcarfuel < @s dtcarmaxfuel run function dtcars:add_fuel
execute as @e[tag=dtcar] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:charcoal", Count:1b}}, limit=1, sort=nearest, distance=..1] if score @s dtcarfuel < @s dtcarmaxfuel run function dtcars:add_fuel

# set fuel score to max fuel score if fuel score is greater than max fuel score
execute as @e[tag=dtcar] at @s if score @s dtcarfuel > @s dtcarmaxfuel run scoreboard players operation @s dtcarfuel = @s dtcarmaxfuel

# decrement fuel score if car driven =============================================================================================================================

# increase fueldelta
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..}] at @s run scoreboard players add @s dtcarfueldelta 1
# decrease dtcarfuel for any car that has a fueldelta of 20
scoreboard players remove @e[scores={dtcarfueldelta=20.., dtcarfuel=1..}] dtcarfuel 1
# reset fueldelta for any car that has a fueldelta of 20
scoreboard players set @e[scores={dtcarfueldelta=20..}] dtcarfueldelta 0

# increment max fuel score if iron ingot is put in =============================================================================================================================

# call upgrade_fuel if iron_ingot found
execute as @e[tag=dtcar] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:iron_ingot", Count:1b}}, limit=1, sort=nearest, distance=..1] run function dtcars:upgrade_fuel
