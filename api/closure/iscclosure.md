# iscclosure
**Signature:** `iscclosure(func: function): boolean` <br>
**Aliases:** N/A <br>
**Description:** Returns true if `func` is a C closure, false if not. <br>
**Example:**
```lua
print(iscclosure(print)) --> true
print(iscclosure(function() end)) --> false
```