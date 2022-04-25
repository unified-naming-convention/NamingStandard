# isreadonly
**Signature:** `isreadonly(t: table): boolean` <br>
**Aliases:** table.isfrozen <br>
**Description:** Returns true if the table `t` is readonly. (Read only tables are also known as frozen tables). <br>
**Example:**
```lua
local mt = getrawmetatable(game)
local old = mt._index

setreadonly(mt, false)

print(isreadonly(mt)) --can you guess the response?
```
