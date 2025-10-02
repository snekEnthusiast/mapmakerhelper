advancement revoke @a only jetpotion:jet

execute if score @p jet.cooldown matches ..0 at @p positioned ~ ~1 ~ positioned ^ ^-0.1 ^-4 align y run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:-100,Silent:1b}
execute if score @p jet.cooldown matches ..0 run scoreboard players set @p jet.cooldown 5