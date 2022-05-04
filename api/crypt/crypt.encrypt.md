# crypt.encrypt
**Signature:** `crypt.encrypt(data: string, key: string, IV: string): string` <br>
**Aliases:** encryption.encrypt (really anything not vague) <br>
**Description:** Encrypts given data using AES (ctr mode) encryption via the key and IV <br>
**Example:**
```lua
setclipboard(crypt.encrypt("hello, world!", "wGc3ZKjI0xAinQKZkmcjrtR7s92r6eq4hhYRRK4o6Gg=", "OUZuWG5LZS9IZHVQQjgrbHVPQTQ0Zz09"))
--> MGE+JZOLPPDJeGPCqw==
```
