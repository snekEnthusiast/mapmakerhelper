tellraw @p [{"text":"welcome th the upgrades shop"}]
#resistances shop
execute unless score @p resistances matches 0.. run tellraw @p {"text":"upgrade effect resistances 0->1 (3 lvls)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/resistance/1"},"hoverEvent":{"action":"show_text","value":[{"text":"grant resistance to poison, wither"}]}}
execute if score @p resistances matches 1 run tellraw @p {"text":"upgrade effect resistances 1->2 (3 lvls)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/resistance/2"},"hoverEvent":{"action":"show_text","value":[{"text":"grant resistance to slowness, weakness, mining fatigue"}]}}
execute if score @p resistances matches 2 run tellraw @p {"text":"upgrade effect resistances 1->2 (2 lvls)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/resistance/3"},"hoverEvent":{"action":"show_text","value":[{"text":"grant resistance to blindness, darkness, nausea"}]}}
execute if score @p resistances matches 3.. run tellraw @p {"text":"upgrade effect resistances 3(max)->"}

#attack shop
execute unless score @p attackkup matches 0.. run tellraw @p {"text":"upgrade attack 0->1 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/1"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
#...