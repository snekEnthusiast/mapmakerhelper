A skill system is considered, but wouldn't be feasible in 1.20.2 due to problems with skill activation. It shouldn't depend on items due to them possibly being lost and because skills should be called quickly, without changing inventory slots.

A viable trigger would be holding left+right, but this requires 1.21.4 like double jumping since it introduces input checks

```
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "type_specific": {
      "type": "minecraft:player",
      "input": {
        "left": true,
        "right": true
      }
    }
  }
}
```

A description of the current system:

When player triggers skill, look up the number of the skill they selected from the `playermapping` scoreboard. Look into the `skillstorage` storage on that index and find the name of the skill selected. Then, run `/function skillsystem/skills/<name>` based on the name selected.

Pass the name of the skill in `skillnum` to `interface/selectskill` as `@p` to select skill.

Always ensure `skillnum` is a viable skill index. Always ensure that 'player names' in `namemapping` and 'name' in `skillstorage` match