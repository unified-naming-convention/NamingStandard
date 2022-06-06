# Console

The **console** functions are used to interact with one console window.

Behavior and examples documented on this page are based on Script-Ware.

---

## rconsoleclear

```lua
function rconsoleclear(): ()
```

Clears the output of the console window.

### Aliases

 * `consoleclear`

### Example

```lua
-- Create the console window
rconsolesettitle("New console")
rconsoleprint("Hello, world!")
rconsolecreate()

-- Clears the output "Hello, world!"
rconsoleclear()
```

---

## rconsolecreate

```lua
function rconsolecreate(): ()
```

Opens the console window. Text previously output to the console will not be cleared.

> ### 🔎 Note
> Some executors also allow functions like `rconsoleprint` to open the console.\
> This is confusing behavior that should not be relied on.

### Aliases

 * `consolecreate`

### Example

Create a program that generates a mountainous landscape:

```lua
-- Create the console window
rconsolesettitle("Beautiful Mountains")
rconsolecreate()

local function generate()
	-- Generate a random decimal number for noise
	local seed = math.random(100, 999) + math.random()

	-- Prints 25 lines of text
	for i = 1, 25 do
		local noise = math.noise(i / 8, seed) + 0.5
		local height = math.floor(noise * 50)
		local line = string.rep("*", height)
		rconsoleprint(line .. "\n")
	end

	-- Prompts the user to generate a new set of mountains
	-- or exit the console window
	rconsoleprint("\nEnter 'Y' to generate a new landscape, or nothing to exit\n")

	local input = rconsoleinput()

	if string.lower(input) == "y" then
		rconsoleclear()
		generate()
	else
		rconsoledestroy()
	end
end

generate()
```

---

## rconsoledestroy

```lua
function rconsoledestroy(): ()
```

Closes the console window and clears its output. The title will not be changed.

### Aliases

 * `consoledestroy`

### Example

```lua
-- Create a console window titled "New console" and with the output "Hello, world!"
rconsolesettitle("New console")
rconsoleprint("Hello, world!")
rconsolecreate()

-- Close the console window, clearing its output
rconsoledestroy()

-- Reopen the console window titled "New console" with no output
rconsolecreate()
```

---

## rconsoleinput

`⏰ Yields`

```lua
function rconsoleinput(): string
```

Waits for the user to input text into the console window. Returns the result.

### Aliases

 * `consoleinput`

### Example

```lua
-- Create the console window
rconsolesettitle("Your Info")
rconsoleprint("What is your name?\nMy name is: ")
rconsolecreate()

-- Retrieve the user's input
local name = rconsoleinput()
rconsoleprint("Hello, " .. name .. "!")

-- Cleanup
task.wait(1)
rconsoledestroy()
```

---

## rconsoleprint

```lua
function rconsoleprint(text: string): ()
```

Prints `text` to the console window. Does not clear existing text or create a new line.

### Parameters

* `text` - The text to append to the output.

### Aliases

 * `consoleprint`

### Example

```lua
-- Create a console window titled "New console" with the
-- output "Hello, world!! How are you today?"
rconsolesettitle("New console")
rconsoleprint("Hello, world!")
rconsoleprint("! How are you today?")
rconsolecreate()
```

---

## rconsolesettitle

```lua
function rconsolesettitle(title: string): ()
```

Sets the title of the console window to `title`.

### Parameters

 * `title` - The new title.

### Aliases

 * `rconsolename`
 * `consolesettitle`

### Example

```lua
-- Create a console window titled "My console"
rconsolesettitle("My console")
rconsolecreate()
```