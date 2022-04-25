# islclosure
**Signature:** `islclosure(func: function): boolean` <br>
**Aliases:** N/A <br>
**Description:** Returns true if `func` is a lua closure, false if not. <br>
**Example:**
```lua
print(islclosure(print)) --> false
print(islclosure(function() end)) --> true
```