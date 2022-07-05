# Crypt

The **crypt** library provides methods for the encryption and decryption of string data.

Behavior and examples documented on this page are based on Script-Ware.

---

## crypt.base64encode

```lua
function crypt.base64encode(data: string): string
```

Encodes a string of bytes into Base64.

### Parameters

 * `data` - The data to encode.

### Aliases

 * `crypt.base64.encode`
 * `crypt.base64_encode`
 * `base64.encode`
 * `base64_encode`

### Example

```lua
local base64 = crypt.base64encode("Hello, World!")
local raw = crypt.base64decode(base64)

print(base64) --> SGVsbG8sIFdvcmxkIQ==
print(raw) --> Hello, World!
```

---

## crypt.base64decode

```lua
function crypt.base64decode(data: string): string
```

Decodes a Base64 string to a string of bytes.

### Parameters

 * `data` - The data to decode.

### Aliases

 * `crypt.base64.decode`
 * `crypt.base64_decode`
 * `base64.decode`
 * `base64_decode`

### Example

```lua
local base64 = crypt.base64encode("Hello, World!")
local raw = crypt.base64decode(base64)

print(base64) --> SGVsbG8sIFdvcmxkIQ==
print(raw) --> Hello, World!
```

---

## crypt.encrypt

`🪲 Compatibility` `🔎 RFC`

```lua
function crypt.encrypt(data: string, key: string, iv: string?, mode: string?): (string, string)
```

Encrypts an unencoded string using AES encryption. Returns the base64 encoded and encrypted string, and the IV.

If an AES IV is not provided, a random one will be generated for you, and returned as a 2nd base64 encoded string.

The cipher modes are 'CBC', 'ECB', 'CTR', 'CFB', 'OFB', and 'GCM'. The default is 'CBC'.

> ### 🪲 Compatibility issues
> Too few executors support this function and a reliable example cannot be made.

### Parameters

 * `data` - The unencoded content.
 * `key` - A base64 256-bit key.
 * `iv` - Optional base64 AES initialization vector.
 * `mode` - The AES cipher mode.

---

## crypt.decrypt

`🪲 Compatibility` `🔎 RFC`

```lua
function crypt.decrypt(data: string, key: string, iv: string, mode: string): string
```

Decrypts the base64 encoded and encrypted content. Returns the raw string.

The cipher modes are 'CBC', 'ECB', 'CTR', 'CFB', 'OFB', and 'GCM'.

> ### 🪲 Compatibility issues
> Too few executors support this function and a reliable example cannot be made.

### Parameters

 * `data` - The base64 encoded and encrypted content.
 * `key` - A base64 256-bit key.
 * `iv` - The base64 AES initialization vector.
 * `mode` - The AES cipher mode.

---

## crypt.generatebytes

```lua
function crypt.generatebytes(size: number): string
```

Generates a random sequence of bytes of the given size. Returns the sequence as a base64 encoded string.

### Parameters

 * `size` - The number of bytes to generate.

### Example

```lua
local bytes = crypt.generatebytes(16)
print(bytes) --> bXlzcWwgYm9vbGVhbnM=
print(#crypt.base64decode(bytes)) --> 16
```

---

## crypt.generatekey

```lua
function crypt.generatekey(): string
```

Generates a base64 encoded 256-bit key. The result can be used as the second parameter for the `crypt.encrypt` and `crypt.decrypt` functions.

### Example

```lua
local bytes = crypt.generatekey()
print(#crypt.base64decode(bytes)) --> 32 (256 bits)
```

---

## crypt.hash

```lua
function crypt.hash(data: string, algorithm: string): string
```

Returns the result of hashing the data using the given algorithm.

Some algorithms include 'sha1', 'sha384', 'sha512', 'md5', 'sha256', 'sha3-224', 'sha3-256', and 'sha3-512'.

### Parameters

 * `data` - The unencoded content.
 * `algorithm` - A hash algorithm.

### Example

```lua
local hash = crypt.hash("Hello, World!", "md5")
print(hash) --> 65A8E27D8879283831B664BD8B7F0AD4
```