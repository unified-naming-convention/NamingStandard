# setrawmetatable
**Signature:** `setrawmetatable(obj: any, mt: table)` <br>
**Aliases:** N/A <br>
**Description:** Set's the metatable of `obj` to `mt`. <br>
**Example:**
```lua
local mt = getrawmetatable(game)

setrawmetatable(game, {
	__type = mt.__type,
	__namecall = mt.__namecall,
	__tostring = mt.__tostring,
	__metatable = mt.__metatable,
	__index = mt.__index,
	__newindex = mt.__newindex
})
```
