# lz4decompress
**Signature:** `lz4decompress(text: string, size: int): string` <br>
**Aliases:** N/A <br>
**Description:** Decompresses text using only the lz4 compression algorithm, takes the size as the second parameter - returns the result. <br>
**Example:**
```lua
local data = "lz4 compressed data"
print(lz4decompress(lz4compress(data), #data))
```
