# fireclickdetector
**Signature:** `fireclickdetector(detector: ClickDetector, distance: number?, flag: ("MouseClick" | "RightMouseClick" | "MouseHoverEnter" | "MouseHoverLeave")?)` <br>
**Aliases:** N/A <br>
**Description:** Fires a Click Detector with the given distance provided, if none is provided, the distanced clicked is defaulted to 0. <br>
**Example:**
```lua
local ClickDetector = game:GetService("Workspace").MyPart.ClickDetector

fireclickdetector(ClickDetector, 50, "RightMouseClick")
```

**Flags:**
| Flag   |      Result   |
|----------|:-------------:|
| MouseClick |  Fires ClickDetector.MouseClick | 
| RightMouseClick |    Fires ClickDetector.RightMouseClick   | 
| MouseHoverEnter | Fires ClickDetector.MouseHoverEnter |  
| MouseHoverLeave | Fires ClickDetector.MouseHoverLeave |
