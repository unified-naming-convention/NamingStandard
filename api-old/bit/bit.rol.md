# bit.rol
**Signature:** `bit.rol(n: number, amount: number): number` <br>
**Aliases:** N/A <br>
**Description:** Takes `n` and rolls bits leftward by `amount` <br>
**Example:**
```lua
assert(bit.rol(0x01010101, 1) == 0x02020202, "Not correct!")
```