# Closures

The **closure** functions are used to create, identify, and interact with Luau closures.

---

## checkcaller

```lua
function checkcaller(): boolean
```

Returns whether the function currently running was called by the executor.

This is useful for metamethod hooks that behave differently when called by the game.

### Example

Prevent the executor from invoking `__namecall` with the global `game` object:

```lua
local refs = {}

refs.__namecall = hookmetamethod(game, "__namecall", function(...)
	local self = ...
	local isRunningOnExecutor = checkcaller()

	if isRunningOnExecutor then
		-- The executor invoked the __namecall method, so this will not affect the
		-- scripts in the game.
		if self == game then
			error("No __namecall on game allowed")
		end
	end

	return refs.__namecall(...)
end)

game:Destroy() --> Error "No __namecall on game allowed"
```

---

## clonefunction

```lua
clonefunction<T>(func: T): T
```

Generates a new closure based on the bytecode of function `func`.

### Parameters

 * `func` - The function to recreate.

### Example

```lua
local function foo()
	print("Hello, world!")
end

local bar = clonefunction(foo)

foo() --> Hello, world!
bar() --> Hello, world!
print(foo == bar) --> false
```

---

## getcallingscript

```lua
function getcallingscript(): BaseScript
```

Returns the script responsible for the currently running function.

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

## hookfunction

```lua
function hookfunction<T>(func: T, hook: function): T
```

Replaces `func` with `hook` internally, where `hook` will be invoked in place of `func` when called.

Returns a new function that can be used to access the original definition of `func`.

> ### ⚠️ Warning
> If `func` is a Luau function (`islclosure(func) --> true`), the upvalue count of `hook` must be less than or equal to that of `func`.\
> Read more about upvalues on [Lua visibility rules](http://www.lua.org/manual/5.1/manual.html#2.6).

### Parameters

 * `func` - The function to hook.
 * `hook` - The function to redirect calls to.

### Aliases

 * `replaceclosure`

### Example

```lua
local function foo()
	print("Hello, world!")
end

local fooRef = hookfunction(foo, function(...)
	print("Hooked!")
end)

foo() --> Hooked!
fooRef() --> Hello, world!
```

---

## iscclosure

```lua
function iscclosure(func: function): boolean
```

Returns whether or not `func` is a closure whose source is written in C.

### Parameters

 * `func` - The function to check.

### Example

```lua
print(iscclosure(print)) --> true
print(iscclosure(function() end)) --> false
```

---

## islclosure

```lua
function islclosure(func: function): boolean
```

Returns whether or not `func` is a closure whose source is written in Luau.

### Parameters

 * `func` - The function to check.

### Example

```lua
print(islclosure(print)) --> false
print(islclosure(function() end)) --> true
```

---

## isexecutorclosure

```lua
function isexecutorclosure(func: function): boolean
```

Returns whether or not `func` was created by the executor.

### Parameters

 * `func` - The function to check.

### Aliases

 * `checkclosure`
 * `isourclosure`

### Example

```lua
print(isexecutorclosure(isexecutorclosure)) --> true
print(isexecutorclosure(function() end)) --> true
print(isexecutorclosure(print)) --> false
```

---

## loadstring

```lua
function loadstring(source: string, chunkname: string?): (function?, string?)
```

Generates a chunk from the given source code. The environment of the returned function is the global environment.

If there are no compilation errors, the chunk is returned by itself; otherwise, it returns `nil` plus the error message.

`chunkname` is used as the chunk name for error messages and debug information. When absent, it defaults to a **random string**.

> ### ⛔ Danger
> Vanilla Lua allows `source` to contain Lua bytecode, but it is a security vulnerability.\
> This is a feature that should not be implemented.

### Parameters

 * `source` - The source code to compile.
 * `chunkname` - Optional name of the chunk.

### Example

```lua
local func, err = loadstring("print('Hello, world!')")
assert(func, err)() --> Hello, world!

local func, err = loadstring("print('Hello")
assert(func, err)() --> Errors "Malformed string"
```

---

## newcclosure

```lua
function newcclosure<T>(func: T): T
```

Returns a C closure that wraps `func`. The result is functionally identical to `func`, but identifies as a C closure, and may have different metadata.

> ### ⚠️ Warning
> Attempting to yield inside a C closure will throw an error.\
> Instead, use the task library to defer actions to different threads.

### Parameters

 * `func` - The function to wrap.

### Example

```lua
local foo = function() end
local bar = newcclosure(foo)

print(iscclosure(foo)) --> false
print(iscclosure(bar)) --> true
```