# bit.ror
**Signature:** `bit.ror(n: number, amount: number): number` <br>
**Aliases:** N/A <br>
**Description:** Takes `n` and rolls bits rightward by `amount` <br>
**Example:**
```lua
assert(bit.ror(0x01010101, 1) == 0x80808080, "Not correct!")
```