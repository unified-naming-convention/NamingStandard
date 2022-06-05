# islclosure
**Signature:** `islclosure(func: function): boolean` <br>
**Aliases:** N/A <br>
**Description:** Returns a boolean for whether `func` is a Lua closure. <br>
**Example:**
```lua
print(islclosure(print)) --> false
print(islclosure(function() end)) --> true
```