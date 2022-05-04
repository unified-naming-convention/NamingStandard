# debug.getupvalues
**Signature:** `debug.getupvalues(f: (function | number)): {[number]: any}` <br>
**Aliases:** N/A <br>
**Description:** Returns upvalues in function/level `f`. <br>
**Example:**
```lua
local X = "Hello";
function A()
	print(X)
	X = "Hi"
end
table.foreach(debug.getupvalues(A), print)
-- { [1] = "Hello" }
A()
table.foreach(debug.getupvalues(A), print)
-- { [1] = "Hi" }
```
