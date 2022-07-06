# queueonteleport
**Signature:** `queueonteleport(script: string)` <br>
**Aliases:** N/A <br>
**Description:** Executes script upon successful teleport. <br>
**Example:**
```lua
queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()")
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
```

### Note:
The alias `queue_on_teleport` is not supported by the UNC.
