schedule function boogeyman:target_tick 20t

data modify storage example:data player set from entity @p[tag=target]
execute store result storage example:macro lodestone.x int 1 run data get storage example:data player.Pos[0]
execute store result storage example:macro lodestone.z int 1 run data get storage example:data player.Pos[2]
data modify storage example:macro lodestone.dimension set from storage example:data player.Dimension
function util:tracker_update with storage example:macro lodestone