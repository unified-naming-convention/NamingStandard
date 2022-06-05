# manifest
**Signature:** `manifest(): table` <br>
**Description:** Returns a table of information about the executor. Useful for identifying which executor the user is using. An extended version of [identifyexecutor()](https://github.com/unified-naming-convention/NamingStandard/blob/main/api/identifyexecutor.md). <br>
**Example:**
```lua
local info = manifest()  -- returns table listed below

print("I am running on " .. info.os .. " " .. info.osver)
-- I am running on Windows 11

print("I injected this script with the " .. info.name .. " executor, version " .. info.ver)
-- I injected this script with the Script-Ware executor, version v1.0.9.31
```

## Required table values

\[\*\] All values should be properly capitalized for consistency.

| Name | Value Type | Description | Value Example|
|------|------|------|------|
|`name`|`string`|The executor's name. For multi-platform executors, this should be the same across all platforms.|`Script-Ware`|
|`os`|`string`|The general operating system on which the executor is running on.|`Windows`|
|`osver`|`string`|The specific operating system version number or Linux distro on which the executor is running on.|`11`|
|`ver`|`string`|The executor's current version name.|`v1.0.9.31`|
