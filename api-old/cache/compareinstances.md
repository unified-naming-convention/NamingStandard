# compareinstances
**Signature:** `compareinstances(first: Instance, second: Instance): boolean` <br>
**Aliases:** N/A <br>
**Description:** Compares the first instance to the second one, regardless if its reference is cloned. <br>
**Example:**
```lua
local clone = cloneref(game:GetService("Workspace")); --> This would clone Workspace instance reference

print(clone == game:GetService("Workspace")) --> false (Since it is not Workspace, its a cloned reference of it.)
print(compareinstances(clone, game:GetService("Workspace"))) --> true
```
