
# rot tracking armor stand =============================================================================================================================

# summon armor stand for each player near a dtcar
execute as @e[tag=dtcar] at @s as @p at @s unless entity @e[tag=dtrottracker, distance=..4] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["dtrottracker"]}

# delete armor stand if nearest player not near dtcar
execute as @e[tag=dtrottracker] at @s as @p at @s unless entity @e[tag=dtcar, distance=..4] run kill @e[tag=dtrottracker, limit=1, sort=nearest]

# teleport armor stand in front of nearest player
execute as @a at @s run tp @e[tag=dtrottracker, limit=1, sort=nearest] ^ ^2 ^2

# minecart moving =============================================================================================================================

# make dtcar face armor stand
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..}] at @s run tp @s ~ ~ ~ facing entity @e[tag=dtrottracker, limit=1, sort=nearest]
# rotate it 90 degrees and set it 0 on the horizontal axis
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..}] at @s run tp @s ~ ~ ~ ~90 0
# teleport it infront of itself
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtdrivemode=1}] at @s run tp @s ^0.4 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=1,dtdrivemode=0}] at @s run tp @s ^0.4 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=2,dtdrivemode=0}] at @s run tp @s ^0.48 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=3,dtdrivemode=0}] at @s run tp @s ^0.56 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=4,dtdrivemode=0}] at @s run tp @s ^0.64 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=5,dtdrivemode=0}] at @s run tp @s ^0.72 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=6,dtdrivemode=0}] at @s run tp @s ^0.8 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=7,dtdrivemode=0}] at @s run tp @s ^0.88 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=8,dtdrivemode=0}] at @s run tp @s ^0.96 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=9,dtdrivemode=0}] at @s run tp @s ^1.04 ^ ^
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..,dtcarspeed=10,dtdrivemode=0}] at @s run tp @s ^1.12 ^ ^

# summon effect if car driving
execute as @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] at @s as @e[tag=dtcar, limit=1, sort=nearest, distance=..1, scores={dtcarfuel=1..}] at @s run summon area_effect_cloud ^-3 ^ ^ {Particle:"smoke",NoGravity:1b,Radius:0.2f,Duration:3}

# teleport down if block below is air
execute as @e[tag=dtcar] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

# teleport 1 block up unless blocks inside of minecart are air, tall grass, flowers
execute as @e[tag=dtcar] at @s unless block ~ ~0.5 ~ air unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ water unless block ~ ~ ~ lava unless block ~ ~ ~ oak_sapling unless block ~ ~ ~ spruce_sapling unless block ~ ~ ~ birch_sapling unless block ~ ~ ~ jungle_sapling unless block ~ ~ ~ acacia_sapling unless block ~ ~ ~ dark_oak_sapling unless block ~ ~ ~ grass unless block ~ ~ ~ fern unless block ~ ~ ~ dead_bush unless block ~ ~ ~ sea_pickle unless block ~ ~ ~ dandelion unless block ~ ~ ~ poppy unless block ~ ~ ~ blue_orchid unless block ~ ~ ~ allium unless block ~ ~ ~ azure_bluet unless block ~ ~ ~ red_tulip unless block ~ ~ ~ orange_tulip unless block ~ ~ ~ white_tulip unless block ~ ~ ~ pink_tulip unless block ~ ~ ~ oxeye_daisy unless block ~ ~ ~ cornflower unless block ~ ~ ~ lily_of_the_valley unless block ~ ~ ~ wither_rose unless block ~ ~ ~ brown_mushroom unless block ~ ~ ~ red_mushroom unless block ~ ~ ~ crimson_fungus unless block ~ ~ ~ warped_fungus unless block ~ ~ ~ crimson_roots unless block ~ ~ ~ warped_roots unless block ~ ~ ~ nether_sprouts unless block ~ ~ ~ moss_carpet unless block ~ ~ ~ snow unless block ~ ~ ~ torch unless block ~ ~ ~ soul_torch unless block ~ ~ ~ sugar_cane unless block ~ ~ ~ sunflower unless block ~ ~ ~ lilac unless block ~ ~ ~ rose_bush unless block ~ ~ ~ peony unless block ~ ~ ~ tall_grass unless block ~ ~ ~ large_fern run tp @s ~ ~1 ~

# minecart crash =============================================================================================================================

# destroy if minecart is inside of 3 block high wall
execute as @e[tag=dtcar] at @s if block ~ ~ ~ air run tag @s add dtairblock1
execute as @e[tag=dtcar] at @s if block ~ ~1 ~ air run tag @s add dtairblock2
execute as @e[tag=dtcar] at @s if block ~ ~2 ~ air run tag @s add dtairblock3
execute as @e[tag=dtcar] at @s unless entity @s[tag=dtairblock1] unless entity @s[tag=dtairblock2] unless entity @s[tag=dtairblock3] run stopsound @a[distance=..8] master minecraft:entity.minecart.inside
execute as @e[tag=dtcar] at @s unless entity @s[tag=dtairblock1] unless entity @s[tag=dtairblock2] unless entity @s[tag=dtairblock3] run function dtcars:destroy
tag @e remove dtairblock1
tag @e remove dtairblock2
tag @e remove dtairblock3

# destroy if minecart is inside of water or lava
execute as @e[tag=dtcar] at @s if block ~ ~ ~ water run function dtcars:destroy
execute as @e[tag=dtcar] at @s if block ~ ~ ~ lava run function dtcars:destroy

# increment speed score if redstone_block is put in =============================================================================================================================

# call add_fuel if redstone_block found
execute as @e[tag=dtcar, scores={dtcarspeed=..9}] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:redstone_block", Count:1b}}, limit=1, sort=nearest, distance=..1] run function dtcars:upgrade_speed

# set speed score to max speed score if speed score is greater than max speed score
execute as @e[tag=dtcar, scores={dtcarspeed=10..}] at @s run scoreboard players set @s dtcarspeed 10
