# getscripts
**Signature:** `getscripts(): {[number]: LuaSourceContainer}` <br>
**Aliases:** N/A <br>
**Description:** Returns all scripts in the game. <br>
**Example:**
```lua
for i,v in next, getscripts() do
	print(i,v)
	wait()
end
```
