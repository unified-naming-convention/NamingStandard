# mousemoverel
**Signature:** `mousemoverel(x: number, y: number)` <br>
**Aliases:** N/A <br>
**Description:** Moves the mouse relative to the current mouse position by coordinates `x` and `y`. <br>
**Example:**
```lua
local player = game.Players.LocalPlayer 
local camera = workspace.CurrentCamera
local m = player:GetMouse()

while wait(1) do
    local pos = camera:WorldToScreenPoint(player.Character.Head.Position)
    mousemoverel(pos.X - m.X, pos.Y - m.Y) --moves the camera to the position of the LocalPlayers head.
end
```