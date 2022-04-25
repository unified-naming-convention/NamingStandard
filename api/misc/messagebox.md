# messagebox
**Signature:** `messagebox(text: string, caption: string, flags: int): int` <br>
**Aliases:** N/A <br>
**Description:** Creates a message box that appears from the game, it returns the user's input. Documentation regarding the flags can be found [here](https://docs.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox) on the windows win32 api documentation. Multiple flags be set by using the `bit32` functions. <br>
**Example:**
```lua
if messagebox("hey, should we do this?", "should we?", 4) == 6 then
  print("we did the thing! o_O")
else
  print("we, did not.. Do the thing...")
end
```
