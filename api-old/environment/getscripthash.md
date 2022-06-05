# getscripthash
**Signature:** `getscripthash(script: LocalScript | ModuleScript): string` <br>
**Aliases:** N/A <br>
**Description:** Takes the script's bytecode and hashes it with SHA384. Can be used to check for changes in scripts. <br>
**Example:**
```lua
print(getscripthash(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript)) --> SHA384 hash, changes if the script code ever changes
```
