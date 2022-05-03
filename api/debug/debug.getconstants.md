# debug.getconstants
**Signature:** `debug.getconstants(f: (function | number)): {[number]: any}` <br>
**Aliases:** N/A <br>
**Description:** Returns the constants in function/level `f`. <br>
**Example:**
```lua
function A()
	local B = 88888888;
	print(B, "Hello", warn)
end
table.foreach(debug.getconstants(A), print) 
--[[
{
	[1] = "print",
	[3] = 88888888,
	[4] = "Hello",
	[5] = "warn"
}
]]
```

