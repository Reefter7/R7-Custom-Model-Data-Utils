# put initiator's uuid in a data storage, so the item modifier can retrieve it from there
execute store result storage r7_cmdu:uuid r7_attune.0 int 1 run data get entity @s UUID[0]
execute store result storage r7_cmdu:uuid r7_attune.1 int 1 run data get entity @s UUID[1]
execute store result storage r7_cmdu:uuid r7_attune.2 int 1 run data get entity @s UUID[2]
execute store result storage r7_cmdu:uuid r7_attune.3 int 1 run data get entity @s UUID[3]

item modify entity @s weapon.mainhand r7_cmdu:uniquedata

## RESET TRIGGER
scoreboard players set @s r7_attune 0
scoreboard players enable @s r7_attune