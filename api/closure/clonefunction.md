# clonefunction
**Signature:** `clonefunction(func: function): function` <br>
**Aliases:** clonefunc <br>
**Description:** Creates a clone of `func`. <br>
**Example:**
```lua
local clone = clonefunction(print) --> Clones print
warn(clone == print) --> false (As its a clone)
clone("Hello World") --> prints
print("Hello World") --> prints
```