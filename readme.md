This datapack was created for use in map creation, currently for minecraft version 1.20.2 (upgrading to 1.21.4 is considered), though updating it shouldn't be difficult. It is as simple as I could make it for ease of editing. It contains several features that work independently and can be disabled

## for mapmakers

When using features in map creation it is recommended to only call the functions in `<namespace>/interface`

Features are in separate folders (namespaces), to disable a feature simply rename it's folder to `<name>_disabled`. Do NOT disable the `common` and `minecraft` namespaces.

Only the waypoint system requires 1.20.2 (more specifically, it's macro system), everything else was made in 1.20.1 and probably works in previous versions as well. The shield requires 1.19.4.

## a note on testing

I've tested these (obviously) but only in singleplayer and bugs may still occur in multiplayer, most likely due to `@p` closest player selectors acting unpredictably. 

## a note on upgrading to newer versions

Upgrades to newer versions will require some revisions. A list of changes that will possibly break this datapack includes:

1. `1.20.5` "removed `nbt` field from item predicates." This is problematic as the `@a[nbt=...]` selector appears to be bugged and predicates exist in this datapack to get around it. If the nbt selector works, then several `execute at @a[predicate=<name>]` will have to be replaced with above nbt checks
2. `1.20.5` changed `nbt` format in give. Simply replace the outermost `{}` brackets with `[]`
3. `1.21` "renamed legacy folders like `loot_tables` and `tags/items` to `loot_table` and `tags/item` and `functions` to `function`." Folders will have to be renamed
4. `1.21.2` "changed formats of data components, loot tables and predicates." As before, formatting will have to change
5. `1.21.5` "text components are now saved as objects in NBT rather than strings containing JSON and many commands such as /tellraw now take SNBT rather than JSON." This is another formatting change that will have to be accounted for

Bear in mind that other problems may occur, this is just a list of changes that I suspect will have to be accounted for

## Features, current and planned

### Health Potion

A multiple use health potion with variable amount of charges, up to 8 currently. Increating this should be easy

#### Interface

`/function healthpotion/interface/increasesize` - call as player to increase their capacity

`/function healthpotion/interface/refill` - call as player to refill their health potions

`/function healthpotion/interface/giverefillpotion` - call as player to give them a hp potion refill consummable

#### Notes

Calling refill on a player with max charges will give them the potion. Potions are consumed **extremely quickly**. Players should have no more than 1 potion in their inventory.

### Machinebows

Special rapid-fire crossbows. They have internal magazines, refilled with arrows by sneaking (shift + walk)

Currently custom magazines are easy to implement, simply change the `machinebow.capacity` value to the desired magazine size

#### interface

`/function machinebow/interface/givebasic` - call as player to give them a basic machinebow

`/function machinebow/interface/giveartemis` - call as player to give them a machinebow which fires "bullets"

`/function machinebow/interface/givefirebrand` - call as player to give them a machinebow which fires fireballs

`/function machinebow/interface/giveabyss` - call as player to give them a machinebow that fires wither skulls. Visual bug occur, unfortunately

### Golden Vow Shield

A special shield, when blocking a ranged attack deals damage to the attacker

#### Interface

`/function goldenvow/interface/give` - call as player to give them the shield

### Checkpoint System

A simple way to create checkpoints, setting a spawnpoint + creating a field granting saturation + healing

#### Interface

`/function checkpoint/interface/summon` - call to spawn a checkpoint wherever you are

`/function checkpoint/interface/giveegg` - call to give player a checkpoint spawn egg

`/function checkpoint/interface/givedeleteegg` - call to give player a checkpoint removal egg. use it near a checkpoint to remove it.

### Various Throwables 

One time use ranged consumables. Throwing knives that deal damage, give slowness, explode

#### Interface

`/function throwables/interface/giveknife` - call as player to give them a throwing knife

`/function throwables/interface/giveslowknife` - call as player to give them a throwing knife that inflicts slowness X for 20 seconds

`/function throwables/interface/giveexplosive` - call as player to give them an explosive that detonates when hitting the ground (recommending mobGriefing to be off)

#### Notes

Explosives will only explode when impacting the ground

### Upgrade System

A way for players to exchange xp for various upgrades (effect immunity, increased stats, etc)

(currently unfinished, but the framework works. Finishing all upgrades should be trivial. Also, attribute modifiers currently change base due to ease of use but creating new attribute modifiers would be preferrable)

#### Interface

`/function upgrades/interface/show` - call as player to show them the shop

`/function upgrades/interface/givexppotion` - call as player to give them a potion granting 1 xp level

### Dynamic Lighting

Active when a player is holding a lantern. No need for an interface, any lantern will work.

#### Notes

might leave behind light blocks if player moves faster than 5  blocks in a single tick (1/20 second discounting lag). If this occurs simply increase the size of the first fill in `dynamiclight/functions/ontick.mcfunction`. This effect also may occur when teleporting


### Waypoint System

A tool for creating a teleportation system

#### Interface

these functions use the macro system. To use them you must fill a storage `/data modify storage <storagename> <path>...` with 'passed values', then call `/function <functionpath> with <storagename>` or use `/function <functionpath> <data>` with <data> in json format to use them

`/function tphub/interface/callteleport` - pass value `i` to teleport player to `i`-th saved position

`/function tphub/interface/create` - pass values `x`,`y`,`z`,`name` to save a position under these coordinates, under the given name

`/function tphub/interface/lock` - pass `i` to lock `i-th` position

`/function tphub/interface/unlock` - pass `i` to unlock `i-th` position

`/function tphub/interface/list` - call as player to show them a list of unlocked positions

`/function tphub/interface/quickpoint {"name":<name>}` - call as player to save their current position uder <name>

`/function tphub/interface/quickdelete {"i":<i>}` - call to remove <i>'th stored position

### Potion of Jet

Preferred fast movement option outside of waypoints.
WARNING: It works by creating explosions, and while the explosions don't hurt the player they will knock back end eventually kill other entities due to mojang spaghetti

#### Interface

`/function jetpotion/interface/give` - call as player to give them the potion of jet

#### Notes

Try not to drink it in one go, the potion produces blasts while drinking. It will not be replenished

### Mobile Shop

Where players buy various items.  Right clicking with the shop key in hand will open the shop

#### Interface

`/function mobileshop/interface/give` - call as player to give them the shop key

#### Notes

It is best to only use the shop key while standing still

This is done by teleporting an invisible villager in right click range when holding the shop key. I do not know of a way to do it via a chest like skypixel

### Lockpick System

A system with which chests can be locked, unlocked and lockpicked, with lockpicking having a 30% (easy to change in predicate) chance to fail and break the lockpick.

#### Interface

`/function lockpick/interface/givelocker` - gives 'locking egg', when SHIFT+right click'ed on top of a chest will lock it

`/function lockpick/interface/givelockremover` - gives lock remover egg. Works like locking egg, except removes lock

`/function lockpick/interface/givelockpick` - gives lockpick

#### Notes

Currently made to work with chests. Lockpicks will work on anything with the `Lock` data, but eggs will not lock these objects. To lock these, simply use the command `/data modify block <x> <y> <z> Lock set value "<literally anything>"` and to unlock it use `data remove block <x> <y> <z> Lock` inserting the block coordinates. The lock value doesn't matter, but bear in mind that locked chests can be opened when holding an item with the same name as the `Lock` value

### Alternative Healing

Experimental and disabled by default. When enabled would implement a new food system, hunger is irrelevant and eating food increases health directly

#### Notes

Eating **any** food will grant the same amount of health. tHis can be changed by adding different advancements leading to different reward functions and adjusting their respective consumed_item lists

### Skill System (in waiting)

Unworkable in it's current state in 1.20.2. The code could be used in 1.21.4
