# hookfunction
**Signature:** `hookfunction(func: function, stub: function): function` <br>
**Aliases:** replaceclosure <br>
**Description:** Hooks `func` with `stub`. When `func` is called, the provided `stub` will be called instead. The original function is returned which can be used to call the original function without triggering the hook. <br>
**Example:**
```lua
local backup = hookfunction(print, warn) --> Changes print into warn
print("Hello World") --> This will warn instead
backup("Hello World") --> This will still print as its a backup
```

### Note:
The `hookfunc` alias is not supported by the UNC.