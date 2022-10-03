--- @meta

crypt = {}

--- @param data string
--- @return string
function crypt.base64encode(data) end

--- @param data string
--- @return string
function crypt.base64_encode(data) end

base64 = {}

--- @param data string
--- @return string
function base64.encode(data) end

--- @param data string
--- @return string
function base64_encode(data) end

--- @alias encryptmode
---|> "CBC"
---| "ECB"
---| "CTR"
---| "CFB"
---| "OFB"
---| "GCM"

--- @param data string
--- @param key string
--- @param iv? string
--- @param mode? encryptmode
--- @return string, string
--- @deprecated
function crypt.encrypt(data, key, iv, mode) end

--- @param data string
--- @param key string
--- @param iv string
--- @param mode encryptmode
--- @deprecated
function crypt.decrypt(data, key, iv, mode) end

--- @param size number
--- @return string
function crypt.generatebytes(size) end

--- @return string
function crypt.generatekey() end

--- @alias algorithms
---| "sha1"
---| "sha384"
---| "sha512"
---| "md5"
---| "sha256"
---| "sha3-224"
---| "sha3-256"
---| "sha3-512"

--- @param data string
--- @param algorithm algorithms
function crypt.hash(data, algorithm) end
