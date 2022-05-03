# debug.setupvalue
**Signature:** `debug.setupvalue(f: (function | number), idx: number, obj: any)` <br>
**Aliases:** N/A <br>
**Description:** Sets upvalue idx in function/level f to val. <br>
**Example:**
```lua
local X = "Hello";
function A()
	print(X)
	X = "Hi"
end
A()
A()
debug.setupvalue(A, 1, "Bye")
A()
--[[
Should print:
Hello
Hi
Bye
]]

```
