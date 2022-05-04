# debug.getupvalue
**Signature:** `debug.getupvalue(f: (function | number), idx: number): any` <br>
**Aliases:** N/A <br>
**Description:** Returns upvalue at `idx` in function/level `f`. <br>
**Example:**
```lua
local X = "Hello";
function A()
	print(X)
	X = "Hi"
end
print(debug.getupvalue(A, 1)) -- "Hello"
A()
print(debug.getupvalue(A, 1)) -- "Hi"
```
