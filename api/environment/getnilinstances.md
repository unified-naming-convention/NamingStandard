# getnilinstances
**Signature:** `getnilinstances(): {[number]: Instance}` <br>
**Aliases:** N/A <br>
**Description:** Returns an array of all previously destroyed Instances in memory & Instances parented to nil regardless of property 'RobloxLocked'.
**Example:**
```lua
for _, Instance in pairs(getnilinstances()) do
	print(Instance)
	task.wait(0)
end
```
