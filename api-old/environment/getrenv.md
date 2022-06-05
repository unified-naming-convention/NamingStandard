# getrenv
**Signature:** `getrenv(): {[string]: any}` <br>
**Aliases:** N/A <br>
**Description:** Returns the global game environment. <br>
**Example:**
```lua
for i,v in next, getsenv() do
	print(i,v)
	wait()
end
```
