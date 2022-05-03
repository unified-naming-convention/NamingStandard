# debug.getstack
**Signature:** `debug.setstack(level: number, idx: number, obj: any)`<br>
**Aliases:** N/A <br>
**Description:** Sets register `idx` in the stack located at `level` to `obj`. <br>
**Example:**
```lua
print(1, 2) -- 1 2
print(1, 2, debug.setstack(1, 2, 500)) -- 1 500
print(1, 2, debug.setstack(1, 2, 2000)) -- 1 2000
```

### Note:
`type(obj)` MUST be equal to `type(debug.getstack(level, idx))` to avoid security issues.