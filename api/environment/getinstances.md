# getinstances
**Signature:** `getinstances(): {[number]: Instance.` <br>
**Aliases:** N/A <br>
**Description:** Returns every single instance in the client. <br>
**Example:**
```lua
for i,v in next, getinstances() do
	print(i,v)
	wait()
end
```
