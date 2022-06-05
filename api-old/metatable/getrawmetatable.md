# getrawmetatable
**Signature:** `getrawmetatable(obj: any): table` <br>
**Aliases:** N/A <br>
**Description:** Returns the metatable value of `obj`, bypassing the __metatable field. <br>
**Example:**
```lua
local mt = getrawmetatable(game)
local old = mt._index
--etc.
```
