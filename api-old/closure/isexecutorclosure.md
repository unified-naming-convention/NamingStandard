# isexecutorclosure
**Signature:** `isexecutorclosure(func: function): boolean` <br>
**Aliases:** checkclosure, isourclosure <br>
**Description:** Takes in a function and returns a boolean for whether it was created by the executor. <br>
**Example:**
```lua
print(isexecutorclosure(print)) --> false
print(isexecutorclosure(function() end)) --> true
```
