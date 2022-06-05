# cache.replace
**Signature:** `cache.replace(inst: Instance, to: Instance)` <br>
**Aliases:** N/A <br>
**Description:** Replaces `inst` with `to` in the instance cache. <br>
**Example:**
```lua
cache.replace(game:GetService("Workspace"), game:GetService("Players"))

--[[
    The instance cache for Workspace is now Players.
    Everytime Workspace is called from the cache, it will return Players
--]]

print(game:GetService("Workspace")) --> This will return Players as the cache is now pointing to Players
```