# isscriptable
**Signature:** `isscriptable(object: Instance, property: string): boolean` <br>
**Aliases:** N/A <br>
**Description:** Returns true if the property is scriptable, false if the property isn't scriptable & nil if the property doesn't exist. <br>
**Example:**
```lua
local new_part = Instance.new("Part")
print(isscriptable(new_part, "size")) -- outputs -> true
```
