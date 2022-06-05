# bit.rshift
**Signature:** `bit.rshift(n: number, amount: number): number` <br>
**Aliases:** N/A <br>
**Description:** Takes `n` and shifts bits rightward by `amount` <br>
**Example:**
```lua
assert(bit.rshift(0x02, 1) == 0x01, "Not correct!")
assert(bit.rshift(0xFFFFFFFF, 2) == 0x3FFFFFFF, "Not correct!")
```