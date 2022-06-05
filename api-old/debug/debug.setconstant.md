# debug.setconstant
**Signature:** `debug.setconstant(f: (function | number), idx: number, obj: any)` <br>
**Aliases:** N/A <br>
**Description:** Sets constant `idx` from function/level `idx` to `obj`. <br>
**Example:**
```lua
function A()
	print("Hello", "World!")
end

```
### Note:
`type(obj)` MUST be equal to `type(debug.getconstant(f, idx))` to avoid security issues.