# getloadedmodules
**Signature:** `getloadedmodules(filter: boolean): {[number]: ModuleScript}` <br>
**Aliases:** N/A <br>
**Description:** Returns all ModuleScripts loaded in the game. If filter is false it will not filter our core items. <br>
**Example:**
```lua
for i,v in next, getloadedmodules() do
	print(i,v)
	wait()
end
```
