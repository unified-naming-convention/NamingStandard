# bit.arshift
**Signature:** `bit.arshift(o1: number, o2: number): number` <br>
**Aliases:** N/A <br>
**Description:** Returns 32-bit arithmetic right-shift on `o1` with `o2` <br>
**Example:**
```lua
assert(bit.arshift(256, 8) == 1, "Not correct!") -- AKA 0x00000001
assert(bit.arshift(-256, 8) == -1, "Not correct!") -- AKA 0xFFFFFFFF
```