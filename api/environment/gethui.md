# gethui
**Signature:** `gethui(): Instance` <br>
**Aliases:** N/A <br>
**Description:** gethui, aka get hidden UI, returns a UI container to store UI in as an alternative to CoreGui. This container is designed to prevent UI based detections such as the focused TextBox or hacky methods of getting whats loaded inside CoreGui. <br>
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
