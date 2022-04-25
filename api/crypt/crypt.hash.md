# crypt.hash
**Signature:** `crypt.hash(data: string, algorithm: string): string` <br>
**Aliases:** N/A <br>
**Description:** data is hashed via the algorithm passed. <br>
**Example:**
```lua
setclipboard(crypt.hash("hello, world!", "md5"))
```

**Hash Algorithms:**<br>
This isn't a complete list, but contains the most widely used algorithms<br>

| Hash Algorithm  
|----------|
| sha1 |  
| sha384 |  
| sha512 |
| md5 |
| sha256 |
| sha3-224 |
| sha3-256 |
| sha3-512 |
