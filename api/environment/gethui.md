# gethui
**Signature:** `gethui(): Instance` <br>
**Aliases:** N/A <br>
**Description:** gethui, aka get hidden ui, returns a ui container to store ui in as an alternative to CoreGui. This container is designed to prevent ui based detections such as focused textbox or hacky methods of getting whats loaded inside CoreGui. <br>
**Example:**
```lua
local gui = Instance.new("ScreenGui")
local label = Instance.new("TextLabel")
label.Position = UDim2.fromScale(0.5, 0.5)
label.AnchorPoint = Vector2.new(0.5, 0.5)
label.Text = "Hello, world!"
label.TextColor3 = Color3.new(1, 0, 0)
label.TextSize = 50
label.Parent = gui

gui.Parent = gethui()
```
