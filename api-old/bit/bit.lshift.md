# bit.lshift
**Signature:** `bit.lshift(n: number, amount: number): number` <br>
**Aliases:** N/A <br>
**Description:** Takes `n` and shifts bits leftward by `amount` <br>
**Example:**
```lua
assert(bit.lshift(0x02, 1) == 0x04, "Not correct!")
assert(bit.lshift(0xFFFFFFFF, 2) == -4 , "Not correct!") -- or 0xFFFFFFFC
```