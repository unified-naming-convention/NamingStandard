# appendfile
**Signature:** `appendfile(path: string, content: string)` <br>
**Aliases:** N/A <br>
**Description:** Appends the content to the file specified in path <br>
**Example:**
```lua
writefile("data.txt", "Cheeseburger ")
appendfile("data.txt", "and a large soda!")
assert(readfile("data.txt") == "Cheeseburger and a large soda!", "yo?")
```
