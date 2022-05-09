# bit.bxor
**Signature:** `bit.bxor(o1: number, o2: number): number` <br>
**Aliases:** N/A <br>
**Description:** Returns 32-bit XOR operation between `o1` and `o2` <br>
**Example:**
```lua
assert(bit.bxor(0x0F0F0F0F, 0xF0F0F0F0) == -1, "Not correct!") -- AKA 0xFFFFFFFF
```