# Closures

These functions are used to create, identify, and edit Lua or C closures.

---

## checkcaller

```ts
function checkcaller(): boolean
```

Returns whether the function currently running was called by the executor.

This is useful for metamethod hooks that behave differently when called by the game.

### Example

```lua
local internal = {}

internal.__namecall = hookmetamethod(game, "__namecall", function(...)
	local self = ...
	local isRunningOnExecutor = checkcaller()

	if isRunningOnExecutor then
		-- The executor invoked the __namecall method, so this will not affect the
		-- scripts in the game.
		if self == game then
			error("No __namecall on game allowed")
		end
	end

	return internal.__namecall(...)
end)

game:Destroy() --> Error "No __namecall on game allowed"
```

---

## clonefunction

```ts
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

```ts
function getcallingscript(): LocalScript | ModuleScript
```

Returns the script responsible for the currently running function.

### Example

Prevent scripts in PlayerGui from invoking the `__namecall` hook:

```lua
local internal = {}
local bannedScripts = game:GetService("Players").LocalPlayer.PlayerGui

internal.__namecall = hookmetamethod(game, "__namecall", function(...)
	local caller = getcallingscript()
	local isBanned = caller.IsDescendantOf(caller, bannedScripts)

	if isBanned then
		error("Not allowed to invoke __namecall")
	end

	return internal.__namecall(...)
end)
```

---

## getscriptclosure

```ts
function getscriptclosure(script: LocalScript | ModuleScript): Function
```

Generates a new closure using the given script's deserialized bytecode.

### Parameters

 * `script` - The script to recreate.

### Aliases

 * `getscriptfunction`

### Example

Compare the return value of a ModuleScript that returns a function:

```lua
local module = game:GetService("Chat").ChatModules.MeCommand

local Command = require(module)
local CommandClone = getscriptclosure(module)()

-- Both functions have similar debug information
table.foreach(debug.getinfo(Command), print)
table.foreach(debug.getinfo(CommandClone), print)
print(Command == CommandClone) --> false
```

---

## hookfunction

```ts
function hookfunction<T>(func: T, hook: Function): T
```

Replaces `func` with `hook` internally, where `hook` will be invoked in place of `func` when called.

Returns a copy of `func` that can be used to access the original function.

> ### ⚠️ Warning
> The hook **must** have the same amount of upvalues as `func`.\
> Read more on [Lua visibility rules](http://www.lua.org/manual/5.1/manual.html#2.6).

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

local internal = {}
internal.foo = hookfunction(foo, function(...)
	print("Hooked!")
end)

foo() --> Hooked!
internal.foo() --> Hello, world!
```

---

## iscclosure

```ts
function iscclosure(func: Function): boolean
```

Returns whether or not `func` is a C closure.

### Parameters

 * `func` - The function to check.

### Example

```lua
print(iscclosure(print)) --> true
print(iscclosure(function() end)) --> false
```

---

## islclosure

```ts
function islclosure(func: Function): boolean
```

Returns whether or not `func` is a Lua closure.

### Parameters

 * `func` - The function to check.

### Example

```lua
print(islclosure(print)) --> false
print(islclosure(function() end)) --> true
```

---

## isexecutorclosure

```ts
function isexecutorclosure(func: Function): boolean
```

Returns whether or not `func` is a C closure created by the executor.

### Parameters

 * `func` - The function to check.

### Aliases

 * `isexecutorclosure`
 * `checkclosure`
 * `isourclosure`

### Example

```lua
print(isexecutorclosure(isexecutorclosure)) --> true
print(isexecutorclosure(newcclosure(function() end))) --> true

print(isexecutorclosure(function() end)) --> false
print(isexecutorclosure(print)) --> false
```

---

## loadstring

```ts
function loadstring(source: string, chunkname: string?): (Function?, string?)
```

Generates a chunk from the given source code. The environment of the returned function is the global environment.

If there are no compilation errors, the chunk is returned by itself; otherwise, it returns `nil` plus the error message.

`chunkname` is used as the chunk name for error messages and debug information. When absent, it defaults to `source`.

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

```ts
function newcclosure<T>(func: T): T
```

Returns a C closure that wraps `func`. The result is functionally identical to `fn`, but identifies as a C closure, and may have different metadata.

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