# bit.band
**Signature:** `bit.band(o1: number, o2: number): number` <br>
**Aliases:** N/A <br>
**Description:** Returns 32-bit AND operation between `o1` and `o2` <br>
**Example:**
```lua
assert(bit.band(0xAABBCCDD, 0xEEFF0011) == -1430585327, "Not correct!") -- AKA 0xAABB0011
```