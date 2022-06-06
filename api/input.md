# Input

The **input** functions allow you to dispatch inputs on behalf of the user.

---

## isrbxactive

```lua
function isrbxactive(): boolean
```

Returns whether the game's window is in focus. Must be true for other input functions to work.

### Aliases

 * `isgameactive`

### Example

```lua
if isrbxactive() then
	mouse1click()
end
```

---

## mouse1click

```lua
function mouse1click(): ()
```

Dispatches a left mouse button click.

---

## mouse1press

```lua
function mouse1press(): ()
```

Dispatches a left mouse button press.

---

## mouse1release

```lua
function mouse1release(): ()
```

Dispatches a left mouse button release.

---

## mouse2click

```lua
function mouse2click(): ()
```

Dispatches a right mouse button click.

---

## mouse2press

```lua
function mouse2press(): ()
```

Dispatches a right mouse button press.

---

## mouse2release

```lua
function mouse2release(): ()
```

Dispatches a right mouse button release.

---

## mousemoveabs

```lua
function mousemoveabs(x: number, y: number): ()
```

Moves the mouse cursor to the specified absolute position.

### Parameters

 * `x` - The x-coordinate of the mouse cursor.
 * `y` - The y-coordinate of the mouse cursor.

### Example

Move the cursor in a circle around the screen:

```lua
-- Wait for the game window to be selected
while not isrbxactive() do
	task.wait()
end

local size = workspace.CurrentCamera.ViewportSize
	
for i = 0, 50 do
	local x = math.sin(i / 50 * math.pi * 2) / 2 + 0.5
	local y = math.cos(i / 50 * math.pi * 2) / 2 + 0.5
	mousemoveabs(x * size.X, y * size.Y)
	task.wait(0.05)
end
```

---

## mousemoverel

```lua
function mousemoverel(x: number, y: number): ()
```

Adjusts the mouse cursor by the specified relative amount.

### Parameters

 * `x` - The x-offset of the mouse cursor.
 * `y` - The y-offset of the mouse cursor.

### Example

Moves the cursor in a small circle:

```lua
-- Wait for the game window to be selected
while not isrbxactive() do
	task.wait()
end

for i = 0, 20 do
	local x = math.sin(i / 20 * math.pi * 2)
	local y = math.cos(i / 20 * math.pi * 2)
	mousemoverel(x * 100, y * 100)
	task.wait(0.05)
end
```

---

## mousescroll

```lua
function mousescroll(pixels: number): ()
```

Dispatches a mouse scroll by the specified number of pixels.

### Parameters

 * `pixels` - The number of pixels to scroll.