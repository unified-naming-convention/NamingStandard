# crypt.decrypt
**Signature:** `crypt.decrypt(data: string, key: string, IV: string?): string` <br>
**Aliases:** N/A <br>
**Description:** data is decrypted using the key and a nonce that is otherwise used by the automatically generated previous IV. <br>
**Example:**
```lua
setclipboard(crypt.decrypt("81KmCr4oB8uiDXfqvg==", "wGc3ZKjI0xAinQKZkmcjrtR7s92r6eq4hhYRRK4o6Gg=", "OUZuWG5LZS9IZHVQQjgrbHVPQTQ0Zz09")) --"hello, world!"
```
