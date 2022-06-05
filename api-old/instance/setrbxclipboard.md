# setrbxclipboard
**Signature:** `setrbxclipboard(data: string)` <br>
**Aliases:** N/A <br>
**Description:** Sets Studio's clipboard to `data` allowing the data to be pasted inside of Studio. <br>
**Example:**
```lua
saveinstance(object,"clipboard.rbxm")
setrbxclipboard(readfile("clipboard.rbxm"))
```