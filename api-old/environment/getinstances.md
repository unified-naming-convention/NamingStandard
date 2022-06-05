# getinstances
**Signature:** `getinstances(): {[number]: Instance.` <br>
**Aliases:** N/A <br>
**Description:** Returns every single instance in the client that has a reference to it. <br>
**Example:**
```lua
for i,v in next, getinstances() do
	print(i,v)
	wait()
end
```
