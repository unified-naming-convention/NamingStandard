# bit.bsub
**Signature:** `bit.bsub(o1: number, o2: number): number` <br>
**Aliases:** N/A <br>
**Description:** Returns 32-bit subtraction operation between `o1` and `o2` <br>
**Example:**
```lua
assert(bit.bsub(2^32-1, -1) == -2147483647, "Not correct!")
```