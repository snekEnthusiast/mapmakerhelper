This datapack was created for use in map creation, currently for minecraft version 1.20.2 (upgrading to 1.21.4 is considered), though updating it shouldn't be difficult. It is as simple as I could make it, but coding experience is recommended before editing anything.

When using features in map creation it is recommended to only call the functions in `<namespace>/interface`

Features are in separate folders (namespaces), to disable a feature simply rename it's folder to `<name>.disabled`

### Health Potion

A multiple use health potion with variable amount of charges, up to 8 currently. Increating this should be easy

#### Interface
`/function healthpotion/interface/increasesize` - call as player to increase their capacity
`/function healthpotion/interface/refill` - call as player to refill their health potions

### Machinebows

Special rapid-fire crossbows. They have internal magazines, refilled with arrows by sneaking (shift + walk)

Currently custom magazines are easy to implement, simply change the `machinebow.capacity` value to the desired magazine size

#### interface

`/function machinebow/interface/givebasic` - call as player to give them a basic machinebow

#### future

Plans for various possible upgrades are planned (arrows unaffected by gravity, flying fast, different ammo types)

### Golden Vow Shield

A special shield, when blocking a ranged attack deals damage to the attacker

#### interface

`/function goldenvow/interface/give` - call as player to give them the shield

### Checkpoint System

A simple way to create checkpoints, setting a spawnpoint + creating a field granting saturation + healing

#### interface

`/function checkpoint/interface/summon` - call to spawn a checkpoint wherever you are

`/function checkpoint/interface/giveegg` - call to give player a checkpoint spawn egg

`/function checkpoint/interface/givedeleteegg` - call to give player a checkpoint removal egg. use it near a checkpoint to remove it.

### Various Throwables 

One time use ranged consumables. Throwing knives that deal damage, give slowness, explode, or even disable AI (planned)
Note: in this version explosives only explode when hitting the ground, not mobs

#### interface

`/function throwables/interface/giveknife` - call as player to give them a throwing knife
`/function throwables/interface/giveslowknife` - call as player to give them a throwing knife that inflicts slowness X for 20 seconds
`/function throwables/interface/giveexplosive` - call as player to give them an explosive that detonates when hitting the ground (recommending mobGriefing to be off)

### Upgrade System

A way for players to exchange xp for various upgrades (effect immunity, increased stats, etc)

(currently unfinished, but the framework works. Finishing all upgrades should be trivial. Also, attribute modifiers currently change base due to ease of use but creating new attribute modifiers would be preferrable)

#### interface

`/function upgrades/interface/show` - call as player to show them the shop

`/function upgrades/interface/givexppotion` - call as player to give them a potion granting 1 xp level

### Dynamic Lighting

Active when a player is holding a lantern. No need for an interface, any lantern will work.

NOTE: might leave behind light blocks if player moves faster than 5  blocks in a single tick (1/20 second discounting lag). If this occurs simply increase the size of the first fill in `dynamiclight/functions/ontick.mcfunction`


### Waypoint System

A tool for creating a teleportation system

#### interface

these functions use the macro system. To use them you must fill a storage `/data modify storage <storagename> <path>...` with 'passed values', then call `/function <functionpath> with <storagename>` to use them

`/function tphub/interface/callteleport` - pass value `i` to teleport player to `i`-th saved position

`/function tphub/interface/create` - pass values `x`,`y`,`z`,`name` to save a position under these coordinates, under the given name

`/function tphub/interface/lock` - pass `i` to lock `i-th` position

`/function tphub/interface/unlock` - pass `i` to unlock `i-th` position

`/function tphub/interface/list` - call as player to show them a list of unlocked positions

### potion of jet

Preferred fast movement option outside of waypoints.
WARNING: It works by creating explosions, and while the explosions don't hurt the player they will knock back end eventually kill other entities due to mojang spaghetti

#### interface

`/function jetpotion/interface/give` - call as player to give them the potion of jet

#### Notes

Try not to drink it in one go, the potion produces blasts while drinking

### Mobile Shop

Where players buy various items.  Right clicking with the shop key in hand will open the shop

#### interface

`/function mobileshop/interface/give` - call as player to give them the shop key

#### Notes

It is best to only use the shop kwy while standing still

This is easily done by teleporting an invisible villager in right click range when holding the shop key. I do not know of a way to do it via a chest like skypixel

### Alternative Healing (concept phase)

Experimental and disabled by default, would hide saturation and use food to restore hp directly

### Lockpick System (concept phase)

locking a chest would be easy, but unlocking is non-trivial