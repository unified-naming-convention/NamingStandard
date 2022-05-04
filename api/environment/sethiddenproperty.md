# sethiddenproperty
**Signature:** `sethiddenproperty(object: Instance, property: string, value: any): boolean` <br>
**Aliases:** N/A <br>
**Description:** Set the hidden property of `object` to `value`. Returns `true` if the property was hidden. <br>
**Example:**
```lua
local new_part = Instance.new("Part")
sethiddenproperty(new_part, "size", Vector3.new(10, 10, 10)) -- set the size
```

### Note:
The alias `sethiddenprop` is not supported by UNC.
