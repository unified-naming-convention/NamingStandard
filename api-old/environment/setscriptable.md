# setscriptable
**Signature:** `setscriptable(instance: Instance, property: string, value: boolean): boolean` <br>
**Aliases:** N/A <br>
**Description:** Sets whether a property is scriptable or not using value. Returns old scriptable status. <br>
**Example:**
```lua
local new_part = Instance.new("Part")

print(isscriptable(new_part, "size")) -- outputs -> true
setscriptable(new_part, "size", false) -- set to false
print(isscriptable(new_part, "size")) -- outputs -> false
```
