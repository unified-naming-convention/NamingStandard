# getscriptbytecode
**Signature:** `getscriptbytecode(script: LocalScript | ModuleScript): string` <br>
**Aliases:** N/A <br>
**Description:** Returns the Luau bytecode of `script` <br>
**Example:**
```lua
print(#getscriptbytecode(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript)) --> 12345
```
