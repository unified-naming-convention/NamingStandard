# cloneref
**Signature:** `cloneref(to_clone: Instance): Instance` <br>
**Aliases:** N/A <br>
**Description:** Returns a copy of `to_clone`'s instance reference. This can be used to access a instance without referencing it (research how referencing works in lua gc for more info). <br>
**Example:**
```lua
local clone = cloneref(game:GetService("Workspace")); --> This would clone Workspace
print(clone == game:GetService("Workspace")) --> false (Since it is not Workspace, its a cloned reference of it.)
```
