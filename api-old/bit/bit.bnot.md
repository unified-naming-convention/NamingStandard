# bit.bnot
**Signature:** `bit.bnot(o: number): number` <br>
**Aliases:** N/A <br>
**Description:** Returns 32-bit NOT operation on `o` <br>
**Example:**
```lua
assert(bit.bnot(0x0F0F0F0F) == -252645136, "Not correct!") -- AKA 0xF0F0F0F0
```