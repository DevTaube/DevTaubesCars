
# scoreboards =============================================================================================================================

scoreboard objectives add dtcarfueldelta dummy
scoreboard objectives add dtcarfuel dummy
scoreboard objectives add dtcarmaxfuel dummy
scoreboard objectives add dtcarspeed dummy
scoreboard objectives add drivesounddelta dummy
scoreboard objectives add dtdrivemode dummy

scoreboard players set threshhold drivesounddelta 115

# function calls =============================================================================================================================

function dtcars:fuel
function dtcars:movement
function dtcars:dropcraft
function dtcars:sounds
function dtcars:drivemode

# display car stats =============================================================================================================================

# drivemode = 0
execute as @a at @s if entity @e[tag=dtcar, limit=1, sort=nearest, distance=..1.5, scores={dtdrivemode=0}] run title @s actionbar ["","Car | ",{"text":"Fuel: ","color":"red"},{"score":{"name":"@e[tag=dtcar, limit=1, sort=nearest, distance=..1.5]","objective":"dtcarfuel"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=dtcar, limit=1, sort=nearest, distance=..1.5]","objective":"dtcarmaxfuel"},"color":"red"}," | ",{"text":"Speed: ","color":"blue"},{"score":{"name":"@e[tag=dtcar, limit=1, sort=nearest, distance=..1.5]","objective":"dtcarspeed"},"color":"blue"},{"text":"/10","color":"blue"}," | ",{"text":" [NORMAL] ","color":"green"}]

# drivemode = 1
execute as @a at @s if entity @e[tag=dtcar, limit=1, sort=nearest, distance=..1.5, scores={dtdrivemode=1}] run title @s actionbar ["","Car | ",{"text":"Fuel: ","color":"red"},{"score":{"name":"@e[tag=dtcar, limit=1, sort=nearest, distance=..1.5]","objective":"dtcarfuel"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=dtcar, limit=1, sort=nearest, distance=..1.5]","objective":"dtcarmaxfuel"},"color":"red"}," | ",{"text":"Speed: ","color":"blue"},{"score":{"name":"@e[tag=dtcar, limit=1, sort=nearest, distance=..1.5]","objective":"dtcarspeed"},"color":"blue"},{"text":"/10","color":"blue"}," | ",{"text":" [SLOWED] ","color":"yellow"}]
