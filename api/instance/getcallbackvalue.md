# getcallbackvalue
**Signature:** `getcallbackvalue(inst: Instance, callbackname: string)` <br>
**Aliases:** getcallbackmember <br>
**Description:** Gets the callback function of the given callback on the given instance. <br>
**Example:**
```lua
local RemoteFunc = Instance.new("RemoteFunction")
RemoteFunc.OnInvoke = function() print("hi") end

print(RemoteFunc.OnInvoke) --> fails
print(getcallbackvalue(RemoteFunc, "OnInvoke")) --> function 0xDEADBEEF
```
