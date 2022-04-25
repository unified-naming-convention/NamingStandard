# cache.invalidate
**Signature:** `cache.invalidate(inst: Instance)` <br>
**Aliases:** N/A <br>
**Description:** Invalidates `inst` in the Instance cache. <br>
**Example:**
```lua
local workspace = game:GetService("Workspace")
cache.invalidate(game:GetService("Workspace"))
print(workspace, workspace == game:GetService("Workspace")) --> Workspace, false

--[[
    This function is the same as doing:
        instance_cache[game:GetService("Workspace")] = nil;

    When the game tries to index something from the cache and its nil, instead of returning nil, it will create a new instance. 
    Which is why, if you invalidate something in the cache, and call it after, it will still work, just under a new instance.
--]]
```