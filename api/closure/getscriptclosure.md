# getscriptclosure
**Signature:** `getscriptclosure(script: LocalScript | ModuleScript): function` <br>
**Aliases:** getscriptfunction <br>
**Description:** Takes the scripts bytecode and deserializes it, returning the closure. This returns a new closure not the one in-use by the script. <br>
**Example:**
```lua
print(getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript))
```
