# getpcd
**Signature:** `getpcd(union: Instance): (string, string)` <br>
**Aliases:** N/A <br>
**Description:** Returns content and hash of the PhysicalConfigData of the given union. <br>
**Example:**
```lua
print(getpcd(workspace.Union))
```

*** NOTE:
This function has been deprecated in place of `gethiddenproperty(part, "PhysicalConfigData"). Don't use this for new work!
