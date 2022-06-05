# debug.getinfo
**Signature:** `debug.getinfo(f: (function | number)): table` <br>
**Aliases:** N/A <br>
**Description:** Returns information about function/level `f`.<br>
**Example:**
```lua

function Aa(X, ...)
	local B = 88888888;
	print(B, "Hello", warn, ...)
end
table.foreach(debug.getinfo(A), print)
--[[
{
	source = "N/A", -- Implementation defined (typically random)
	what = "Lua",
	numparams = 0,
	func = Aa,
	short_src = "N/A", -- Implementation defined (typically random)
	currentline = 2,
	nups = 0,
	is_vararg = 1,
	name = "Aa"
}
]]
```
