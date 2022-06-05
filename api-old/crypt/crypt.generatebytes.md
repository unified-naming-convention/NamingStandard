# crypt.generatebytes
**Signature:** `crypt.generatebytes(bytes: number): string` <br>
**Aliases:** N/A <br>
**Description:** Generates randomly generated, base64 encoded, bytes in length bytes. This is typically used for the nonce/IV.<br>
**Example:**
```lua
setclipboard(crypt.generatebytes(16))
```
