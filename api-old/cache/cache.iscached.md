# cache.iscached
**Signature:** `cache.iscached(inst: Instance)` <br>
**Aliases:** N/A <br>
**Description:** Checks if `inst` exists in the Instance cache. <br>
**Example:**
```lua
print(cache.iscached(game:GetService("Workspace"))) --> true (All children are cached and looked up on index)
```
