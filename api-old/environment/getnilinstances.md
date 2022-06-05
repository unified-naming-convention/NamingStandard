# getnilinstances
**Signature:** `getnilinstances(): {[number]: Instance}` <br>
**Aliases:** N/A <br>
**Description:** Returns every instance in the game that is parented to nil. <br>
**Example:**
```lua
for i,v in next, getnilinstances() do
	print(i,v)
	wait()
end
```
