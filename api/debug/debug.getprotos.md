# debug.getprotos
**Signature:** `debug.getprotos(f: (function | number)): table` <br>
**Aliases:** N/A <br>
**Description:** Returns protos in function/level `f`.  <br>
**Example:**
```lua
function pf()
	function ca() return 1 end;
	_(ca, ca());
	function cb() return 2 end;
	_(cb, cb());
	function cc() return 3 end;
	_(cc, cc());
end
pcall(pf)

print(#debug.getprotos(pf) == 3, "The passed function has 3 protos.")
assert(type(debug.getprotos(pf)[1]()) == "nil", "The return value of the functions returned in the table must always be nil to avoid security issues. All other aspects of the function should remain intact E.g. currentline, is_vararg, etc.")
```
