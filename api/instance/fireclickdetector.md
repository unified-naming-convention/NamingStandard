# fireclickdetector
**Signature:** `fireclickdetector(detector: ClickDetector, distance: number?, flag: ("MouseClick" | "RightMouseClick" | "MouseHoverEnter" | "MouseHoverLeave")?)` <br>
**Aliases:** N/A <br>
**Description:** Fires a ClickDetector with `distance` and `flag`. If `distance` is not passed, it is 0. If `flag` is not passed, it is "MouseClick". <br>
**Example:**
```lua
local ClickDetector = game:GetService("Workspace").MyPart.ClickDetector

fireclickdetector(ClickDetector, 50, "RightMouseClick")
```

**Flags:**
| Flag            | Result                              |
|-----------------|:-----------------------------------:|
| MouseClick      | Fires ClickDetector.MouseClick      | 
| RightMouseClick | Fires ClickDetector.RightMouseClick | 
| MouseHoverEnter | Fires ClickDetector.MouseHoverEnter |  
| MouseHoverLeave | Fires ClickDetector.MouseHoverLeave |