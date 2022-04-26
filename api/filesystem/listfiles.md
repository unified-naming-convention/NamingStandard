# listfiles
**Signature:** `listfiles(folderPath: string): {string}` <br>
**Aliases:** N/A <br>
**Description:** Returns an array of file path `folderPath`. Errors if `folderPath` is not valid. <br>
**Example:**
```lua
local pathsInFolder = listfiles(".") -- Just the base workspace folder
for _, path in ipairs(pathsInFolder) do
    print(path)
end
```
