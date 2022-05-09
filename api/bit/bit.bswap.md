# bit.bswap
**Signature:** `bit.bswap(n: number): number` <br>
**Aliases:** N/A <br>
**Description:** Returns swapped endianness of `n` <br>
**Example:**
```lua
assert(bit.bswap(0xAABBCCDD) == -573785174, "Not correct!") -- AKA 0xDDCCBBAA
```