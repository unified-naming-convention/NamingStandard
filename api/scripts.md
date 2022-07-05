# Scripts

The **script** functions provide access to script environments and internal state.

---

## getgc

```lua
function getgc(includeTables: boolean?): {function | userdata | table}
```

Returns a list of objects in the Luau garbage collector.

If `includeTables` is false, tables will not be included in the list.

### Parameters

 * `includeTables` - Whether or not to include tables in the list.

### Example

**TODO** - Write a real-world example use case.

---

## getgenv

```lua
function getgenv(): { [string]: any }
```

Returns the custom global environment of the executor. It can be used to add global functions or share variables between scripts.

### Example

Prevent a script from being run twice:

```lua
if getgenv().__IS_LOADED then
	error("This script is already loaded!")
end

getgenv().__IS_LOADED = true
```

---

## getloadedmodules

```lua
function getloadedmodules(excludeCore: boolean?): {ModuleScript}
```

Returns a list of ModuleScripts that have been loaded. If `excludeCore` is true, CoreScript-related modules will not be included in the list.

### Parameters

 * `excludeCore` - Whether or not to exclude core modules from the list.

### Example

```lua
local modules = getloadedmodules(true)

for _, module in ipairs(modules) do
	print(module:GetFullName())
end
```

---

## getrenv

```lua
function getrenv(): { [string]: any }
```

Returns the global environment of the game client. It can be used to access the global functions that LocalScripts and ModuleScripts use.

### Example

Prevent scripts in PlayerScripts from being required:

```lua
local refs = {}
local bannedScripts = game:GetService("Players").LocalPlayer.PlayerScripts

refs.require = hookfunction(require, function(...)
	local module = ...
	if
		typeof(module) == "Instance"
		and module:IsA("ModuleScript")
		and module:IsDescendantOf(bannedScripts)
	then
		error("You are not allowed to require this module!")
	end
	return refs.require(...)
end)
```

---

## getrunningscripts

```lua
function getrunningscripts(): {LocalScript | ModuleScript}
```

Returns a list of scripts that are currently running.

### Example

```lua
local scripts = getrunningscripts()

for _, object in ipairs(scripts) do
	print(object:GetFullName(), "(" .. object.ClassName .. ")")
end
```

---

## getscriptbytecode

```lua
function getscriptbytecode(script: LocalScript | ModuleScript): string
```

Returns the raw Luau bytecode of the given script.

### Parameters

 * `script` - A client-running LocalScript or ModuleScript.

### Aliases

 * `dumpstring`

### Example

```lua
local animate = game:GetService("Players").LocalPlayer.Character.Animate
local bytecode = getscriptbytecode(animate)
```

---

## getscriptclosure

```lua
function getscriptclosure(script: LocalScript | ModuleScript): function
```

Generates a new closure using the bytecode of `script`.

### Parameters

 * `script` - The script to recreate.

### Aliases

 * `getscriptfunction`

### Example

Compare the return value of a ModuleScript:

```lua
local module = game:GetService("CoreGui").RobloxGui.Modules.Common.Constants

local constants = getrenv().require(module)
local generatedConstants = getscriptclosure(module)()

print(constants == generatedConstants) --> false
for k, v in pairs(constants) do
	print(k, typeof(v) == typeof(generatedConstants[k])) --> true
end
```

---

## getscripthash

```lua
function getscripthash(script: LocalScript | ModuleScript): string
```

Returns a SHA384 hash of the script's bytecode. This is useful for detecting changes to a script's source code.

### Parameters

 * `script` - A client-running LocalScript or ModuleScript.

### Example

```lua
local animate = game:GetService("Players").LocalPlayer.Character.Animate
local hash = getscripthash(animate)

task.delay(1.5, function ()
	animate.Source = "print('Hello World!')"
end)

for i = 1, 5 do
	task.wait(0.5)

	local newHash = getscripthash(animate)

	if hash ~= newHash then
		print("The script has changed!")
		hash = newHash
	else
		print("The script has not changed.")
	end
end
```

---

## getscripts

```lua
function getscripts(): {LocalScript | ModuleScript}
```

Returns a list of every script in the game.

### Example

```lua
local scripts = getscripts()

for _, object in ipairs(scripts) do
	print(object:GetFullName(), "(" .. object.ClassName .. ")")
end
```

---

## getsenv

```lua
function getsenv(script: LocalScript | ModuleScript): { [string]: any }
```

Returns the global environment of the given script. It can be used to access variables and functions that are not defined as local. 

### Parameters

 * `script` - A client-running LocalScript or ModuleScript.

### Example

```lua
local animate = game:GetService("Players").LocalPlayer.Character.Animate
local environment = getsenv(animate)

for k, v in pairs(environment) do
	print(k, v, "(" .. typeof(v) .. ")")
end
```

---

## getthreadidentity

```lua
function getthreadidentity(): number
```

Returns the identity of the current thread.

Learn more about thread identities [here](https://roblox.fandom.com/wiki/Security_context).

### Aliases

 * `getidentity`
 * `getthreadcontext`

### Example

```lua
local identity = getthreadidentity()
print(identity) --> 7
```

---

## setthreadidentity

```lua
function setthreadidentity(identity: number): ()
```

Sets the current thread identity.

Learn more about thread identities [here](https://roblox.fandom.com/wiki/Security_context).

### Aliases

 * `setidentity`
 * `setthreadcontext`

### Example

```lua
setthreadidentity(3)
print(getthreadidentity()) --> 3
```