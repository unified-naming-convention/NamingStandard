# debug.getcode
**Signature:** `debug.getcode(f: (function | number), idx: number?): (number | {number})` <br>
**Aliases:** N/A <br>
**Description:** Returns the instruction at index `idx` in function/level `f`. `f` must be a Lua closure. `idx` must be within the bounds of the code of `f`. The instruction is read as a little endian 32 bit unsigned integer. If `idx` is not supplied, this function instead returns an array of instructions for the function. <br>
**Example:**
```lua
local function testVararg(...)
	print(...)
end

local firstInstruction = debug.getcode(testVararg, 1)
local opcode = bit32.band(firstInstruction, 0xff)

print(string.format("%02X", opcode)) --> A3 (PREPVARARGS)

local allInstructions = debug.getcode(testVararg)
for _, instruction in ipairs(allInstructions) do
	print(string.format("%08X", instruction))
end
```
