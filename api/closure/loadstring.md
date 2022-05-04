# loadstring
**Signature:** `loadstring(src: string, chunkname: string?): function | (nil, string)` <br>
**Aliases:** N/A <br>
**Description:** Compiles `src` with the chunk name being set to `chunkname`. Returns the compiled and loaded function. If compilation fails, nil is returned alongside the compile error. <br>
**Example:**
```lua
loadstring("print'hi'")()
```

### Note:
Supporting loading of Luau bytecode is a security vulnerability, thus not part of the standard. It is highly advised you do not transfer this functionality from vanilla Lua.