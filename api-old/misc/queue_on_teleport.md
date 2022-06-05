# queue_on_teleport
**Signature:** `queue_on_teleport(script: string)` <br>
**Aliases:** queueonteleport <br>
**Description:** Executes script upon successful teleport. <br>
**Example:**
```lua
queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()")
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
```
