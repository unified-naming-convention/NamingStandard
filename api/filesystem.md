# Filesystem

The **filesystem** functions allow read and write access to a designated folder in the directory of the executor, typically called *workspace*.

---

## readfile

```lua
function readfile(path: string): string
```

Returns the contents of the file located at `path`.

### Parameters

 * `path` - The path to the file.

### Example

```lua
writefile("file.txt", "Hello, world!")
print(readfile("file.txt")) --> Hello, world!
```

---

## listfiles

```lua
function listfiles(path: string): {string}
```

Returns a list of files and folders in the folder located at `path`. The returned list contains whole paths.

### Parameters

 * `path` - The path to the folder.

### Example

Prints every file and folder in *workspace*.

```lua
local function descend(path, level)
	level = level or 0
	for _, file in ipairs(listfiles(path)) do
		print(string.rep("  ", level) .. file)
		if isfolder(file) then
			descend(file, level + 1)
		end
	end
end

descend(".")
```

---

## writefile

```lua
function writefile(path: string, data: string): ()
```

Writes `data` to the file located at `path` if it is not a folder.

### Parameters

 * `path` - A path to the file.
 * `data` - The data to write.

### Example

```lua
writefile("file.txt", "Hello, world!")
print(readfile("file.txt")) --> Hello, world!
```

---

## makefolder

```lua
function makefolder(path: string): ()
```

Creates a folder at `path` if it does not already exist.

### Parameters

 * `path` - The target location.

### Example

```lua
makefolder("folder")
writefile("folder/file.txt", "Hello, world!")
print(readfile("folder/file.txt")) --> Hello, world!
```

---

## appendfile

```lua
function appendfile(path: string, data: string): ()
```

Appends `data` to the end of the file located at `path`. Creates the file if it does not exist.

### Parameters

 * `path` - A path to the file.
 * `data` - The data to append.

### Example

```lua
writefile("services.txt", "A list of services:\n")

for _, service in ipairs(game:GetChildren()) do
	if service.ClassName ~= "" then
		appendfile("services.txt", service.ClassName .. "\n")
	end
end
```

---

## isfile

```lua
function isfile(path: string): boolean
```

Returns whether or not `path` points to a file.

### Parameters

 * `path` - The path to check.

### Example

```lua
writefile("file.txt", "Hello, world!")
print(isfile("file.txt")) --> true
```

---

## isfolder

```lua
function isfolder(path: string): boolean
```

Returns whether or not `path` points to a folder.

### Parameters

 * `path` - The path to check.

### Example

```lua
makefolder("folder")
print(isfolder("folder")) --> true
```

---

## delfile

```lua
function delfile(path: string): ()
```

Removes the file located at `path`.

### Parameters

 * `path` - The path to the file.

### Example

```lua
writefile("file.txt", "Hello, world!")
print(isfile("file.txt")) --> true

delfile("file.txt")
print(isfile("file.txt")) --> false
```

---

## delfolder

```lua
function delfolder(path: string): ()
```

Removes the folder located at `path`.

### Parameters

 * `path` - The path to the folder.

### Example

```lua
makefolder("folder")
print(isfolder("folder")) --> true

delfolder("folder")
print(isfolder("folder")) --> false
```

---

## loadfile

```lua
function loadfile(path: string, chunkname: string?): (function?, string?)
```

Generates a chunk from the file located at `path`. The environment of the returned function is the global environment.

If there are no compilation errors, the chunk is returned by itself; otherwise, it returns `nil` plus the error message.

`chunkname` is used as the chunk name for error messages and debug information. When absent, it defaults to a **random string**.

### Parameters

 * `path` - A path to the file containing Luau code.
 * `chunkname` - Optional name of the chunk.

### Example

```lua
writefile("file.lua", "local number = ...; return number + 1")
local func, err = loadfile("file.lua")
local output = assert(func, err)(1)
print(output) --> 2
```

---

## dofile

```lua
function dofile(path: string): ()
```

Attempts to load the file located at `path` and execute it on a new thread.

> ### 🔎 Note
> Some executors may provide the file name to the top-level vararg of the file (`...`).

### Parameters

 * `path` - The path to the file.

### Example

```lua
writefile("code.lua", "print('Hello, world!')")
dofile("code.lua") --> "Hello, world!"
```
