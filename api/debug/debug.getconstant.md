# debug.getconstant
**Signature:** `debug.getconstant(f: (function | number), idx: number): any` <br>
**Aliases:** N/A <br>
**Description:** Returns the constant at index `idx` in the function/level `f` <br>
**Example:**
```lua
function A()
	print("Hello")
end
print(debug.getconstant(A, 1), debug.getconstant(A, 2)) -- print Hello
```
