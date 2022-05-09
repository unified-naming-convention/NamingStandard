# bit.tobit
**Signature:** `bit.tobit(n: number): number` <br>
**Aliases:** N/A <br>
**Description:** Takes `n` and assures the return value is within 32-bit signed bounds. <br>
**Example:**
```lua
assert(bit.tobit(0xFFFFFFFF) == -1, "Not correct!") -- AKA 0xFFFFFFFF
```