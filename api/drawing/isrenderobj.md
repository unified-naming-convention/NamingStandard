# isrenderobj
**Signature:** `isrenderobj(object: userdata): boolean` <br>
**Aliases:** N/A <br>
**Description:** Checks if 'object' is a draw object. <br>
**Example:**
```lua
local render_obj = Drawing.new("Circle")
print(isrenderobj(render_obj)) -- output -> true

local non_render_obj = Instance.new("Part")
print(isrenderobj(non_render_obj)) -- output -> false
```
