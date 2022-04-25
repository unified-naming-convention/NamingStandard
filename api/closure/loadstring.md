# loadstring
**Signature:** `loadstring(src: string, chunkname: string?): function | (nil, string)` <br>
**Aliases:** N/A <br>
**Description:** Compiles `src` with the chunk name being set to `chunkname`. Returns the compiled and loaded function. If compilation fails, nil is returned alongside the compile error. <br>
**Example:**
```lua
loadstring("print'hi'")()
```
