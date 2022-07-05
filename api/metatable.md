# Metatable

The **metatable** functions allow elevated access to locked metatables.

---

## getrawmetatable

```lua
function getrawmetatable(object: table): table
```

Returns the metatable of `object`, where the `__metatable` field would normally lock the metatable.

### Parameters

 * `object` - An object with a metatable.

### Example

```lua
local object = setmetatable({}, { __metatable = "Locked!" })
print(getmetatable(object)) --> Locked!
print(getrawmetatable(object)) --> table
```

---

## hookmetamethod

```lua
function hookmetamethod(object: table, method: string, hook: function): function
```

Replaces `func` with `hook` internally, where `hook` will be invoked in place of `func` when called.

Returns a new function that can be used to access the original definition of `func`.

> ### ⚠️ Not yieldable
> The function `hook` is **not** allowed to yield or block the thread.

> ### ⚠️ Recursion
> Try not to invoke `method` from within the function `hook`!\
> For example, do not index a property of an Instance from within a hook to `__index`.

### Parameters

 * `object` - An object with a metatable.
 * `method` - The name of the method to hook.
 * `hook` - The function to replace `func` with.

### Example

Prevent scripts in PlayerGui from invoking the `__namecall` hook:

```lua
local refs = {}
local bannedScripts = game:GetService("Players").LocalPlayer.PlayerGui

refs.__namecall = hookmetamethod(game, "__namecall", function(...)
	local caller = getcallingscript()

	-- Use '.' notation to call the IsDescendantOf method without invoking
	-- __namecall and causing a recursive loop.
	local isBanned = caller.IsDescendantOf(caller, bannedScripts)

	if isBanned then
		error("Not allowed to invoke __namecall")
	end

	return refs.__namecall(...)
end)
```

---

## getnamecallmethod

```lua
function getnamecallmethod(): string
```

Returns the name of the method that invoked the `__namecall` metamethod.

### Example

Bans the use of `game:service()`:

```lua
local refs = {}

refs.__namecall = hookmetamethod(game, "__namecall", function(...)
	local self = ...
	local method = getnamecallmethod()

	if self == game and method == "service" then
		error("Not allowed to run game:service()")
	end

	return refs.__namecall(...)
end)
```

---

## isreadonly

```lua
function isreadonly(object: table): boolean
```

Returns whether `object` is frozen or read-only. Identical to `table.isfrozen`.

### Parameters

 * `object` - A table or userdata.

### Example

```lua
local object = {}
table.freeze(object)
print(isreadonly(object)) --> true
```

---

## setrawmetatable

```lua
function setrawmetatable(object: table, metatable: table): ()
```

Sets the metatable of `object` to `metatable`, where the `__metatable` field would normally lock the metatable.

### Parameters

 * `object` - A table or userdata.
 * `metatable` - The metatable to set.

### Example

```lua
local object = setmetatable({}, {})
print(getmetatable(object)) --> table
setrawmetatable(object, { __metatable = "Hello, world!" })
print(getmetatable(object)) --> Hello, world!
```

---

## setreadonly

```lua
function setreadonly(object: table, readonly: boolean): ()
```

Sets whether `object` is frozen or read-only.

### Parameters

 * `object` - A table or userdata.
 * `readonly` - Whether or not `object` should be frozen.

### Example

```lua
local object = {}

table.freeze(object)
print(isreadonly(object)) --> true

setreadonly(object, false)
print(isreadonly(object)) --> false
```