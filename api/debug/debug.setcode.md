# debug.setcode
## **! WARNING: ARBITRARY CODE EXECUTION POTENTIAL !** <br>
**Signature:** `debug.setcode(f: (function | number), idx: number, insn: number)` <br>
**Signature:** `debug.setcode(f: (function | number), insns: {number}, startIdx: number?)` <br>
**Aliases:** N/A <br>
**Description:** **WARNING: ARBITRARY CODE EXECUTION POTENTIAL**; If a single index `idx` is given, sets the code at that index to `insn`. `idx` must be in the range for code of the function or level.
If a list of instructions `insns` is given, sets that list of instructions to the code of the function or level, optionally starting at `startIdx`. <br>
**Example:**
```lua
local function testFunc(arg)
	-- Predicted compilation:
	-- [1] GETIMPORT R1 1 ; print
	-- [2] MOVE R2 R0
	-- [3] LOADN R3 50
	-- [4] CALL R1 3 1
	-- [5] RETURN R0 1
	print(arg, 50)
end

debug.setcode(testFunc, 3, 0x0040038C)
testFunc("test") --> test 64
```
