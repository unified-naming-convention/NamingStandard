# crypt.hash
**Signature:** `crypt.hash(data: string, algorithm: string): string` <br>
**Aliases:** N/A <br>
**Description:** data is hashed via the algorithm passed. Must be able to handle NULL bytes within the string. <br>
**Example:**
```lua
setclipboard(crypt.hash("hello, World!", "md5")) --> FCFF297B5772AA6D04967352C5F4EB96
```

**Hash Algorithms:**<br>
This isn't a complete list, but contains the most widely used algorithms: <br>

| Hash Algorithm  
|----------|
| sha1     |  
| sha384   |  
| sha512   |
| md5      |
| sha256   |
| sha3-224 |
| sha3-256 |
| sha3-512 |
