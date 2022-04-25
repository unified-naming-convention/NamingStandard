# cleardrawcache
**Signature:** `cleardrawcache()` <br>
**Aliases:** N/A <br>
**Description:** Clears all objects from the internal draw object list. NOTE: This invalidates any references to pre-existing draw objects! <br>
**Example:**
```lua
Drawing.new("Circle") -- create new render object
wait(2)
cleardrawcache() -- delete every render object
```
