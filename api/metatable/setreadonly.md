# setreadonly
**Signature:** `setreadonly(t: table, state: boolean)` <br>
**Aliases:** N/A <br>
**Description:** Set's the read-only state of `t` to state - setting whether it can be written to or not. (Read only tables are also known as frozen tables). <br>
**Example:**
```lua
local mt = getrawmetatable(game)
local old = mt.__index

setreadonly(mt, false)
```

**Notice:**

Aliases for this function are not supported by UNC. (with the exception of table.freeze) `setreadonly` should always be used. 
