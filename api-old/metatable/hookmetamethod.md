# hookmetamethod
**Signature:** `hookmetamethod(obj: (table | userdata), metamethod: string, replacement: function): function` <br>
**Aliases:** N/A <br>
**Description:** Hooks the given metamethod with replacement, returns old unhooked function. <br>
**Example:**
```lua
local old; old = hookmetamethod(game, "__index", function(table, index)
  print(table, index)
  return old(table, index)
end)
```
