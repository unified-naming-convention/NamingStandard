# debug.getstack
**Signature:** `debug.getstack(level: number, idx: number): any`<br>
**Aliases:** N/A <br>
**Description:** Returns object at `idx` in the stack located at `level`. <br>
**Example:**
```lua
print(1, 5, debug.getstack(1, 3)) -- 1 5 5 
print(1, 5, debug.getstack(1, 2)) -- 1 5 1
```
