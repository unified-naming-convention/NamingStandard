# debug.getproto
**Signature:** `debug.getproto(f: (function | number), idx: number, active: boolean?): (function | table)` <br>
**Aliases:** N/A <br>
**Description:** Returns proto at `idx` in function/level `f`. If `active` is true it will return a table of all the active closures with that as the main proto. <br>
**Example:**
```lua
function pf()
	function ca() return 1 end;
	print(ca, ca());
	function cb() return 2 end;
	print(cb, cb());
	function cc() return 3 end;
	print(cc, cc());
end
pf()

local t_1, t_2, t_3 = 
	debug.getproto(pf, 1, true), 
	debug.getproto(pf, 2, true), 
	debug.getproto(pf, 3, true);
assert(type(t_1) == 'table' and type(t_2) == 'table' and type(t_3) == 'table', 
	"getproto should return tables for each of these types, failed");
assert(type(t_1[1]) == 'function' and type(t_2[1]) == 'function' and type(t_3[1]) == 'function', 
	"getproto should return a table of active functions that are of the unique proto, in this case each of these have one active.")
assert(t_1[1]() == 1 and t_2[1]() == 2 and t_3[1]() == 3,
	"the returned functions should return 1, 2 and 3 respectively.")
```
