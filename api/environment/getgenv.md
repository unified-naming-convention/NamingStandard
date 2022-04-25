# getgenv
**Signature:** `getgenv(): {[string]: any}` <br>
**Aliases:** N/A <br>
**Description:** Returns the executor environment. <br>
**Example:**
```lua
for i,v in next, getgenv() do
	print(i,v)
	wait()
end
```
