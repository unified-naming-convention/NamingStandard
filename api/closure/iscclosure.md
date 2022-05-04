# iscclosure
**Signature:** `iscclosure(func: function): boolean` <br>
**Aliases:** N/A <br>
**Description:** Returns a boolean for whether or not `func` is a C closure. <br>
**Example:**
```lua
print(iscclosure(print)) --> true
print(iscclosure(function() end)) --> false
```