# getgc
**Signature:** `getgc(include_tables: boolean): {[number]: function | userdata | {[any]: any}}` <br>
**Aliases:** N/A <br>
**Description:** Returns the garbage collector table. <br>
**Example:**
```lua
for i,v in next, getgc() do
	print(i,v)
	wait()
end
```
