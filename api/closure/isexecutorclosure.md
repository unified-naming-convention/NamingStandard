# isexecutorclosure
**Signature:** `isexecutorclosure(func: function): boolean` <br>
**Aliases:** checkclosure, isourclosure <br>
**Description:** Takes in a function of any kind and returns true if the function was created by the executor. Otherwise it will return false. <br>
**Example:**
```lua
print(isexecutorclosure(print)) --> false
print(isexecutorclosure(function() end)) --> true
```
