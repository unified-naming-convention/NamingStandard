# newcclosure
**Signature:** `newcclosure(func: function): function` <br>
**Aliases:** N/A <br>
**Description:** Wraps `func` as a c closure then returns the wrapped c function. <br>
**Example:**
```lua
local function print_function()
    print("Hello World 123")
end

print(iscclosure(print_function)) --> false (The function was made in lua)

local print_function_cclosure = newcclosure(print_function)

print(iscclosure(print_function_cclosure)) --> true (The function was wrapped in a cclosure)
```

**Warning:**
- [⚠️] This function may interfere with yielding
