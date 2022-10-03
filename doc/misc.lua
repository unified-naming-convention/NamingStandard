--- @meta

--- @return string, string
function identifyexecutor() end

--- @return string, string
function getexecutorname() end

--- @param data string
--- @return string
function lz4compress(data) end

--- @param data string
--- @return string
function lz4decompress(data) end

--- @param text string
--- @param caption string
--- @param flags number
--- @return number
function messagebox(text, caption, flags) end

--- @param code string
function queue_on_teleport(code) end

--- @param code string
function queueonteleport(code) end

--- @class request
--- @field Url string
--- @field Method string
--- @field Body string?
--- @field Headers table?
--- @field Cookies table?

--- @class response
--- @field Body string
--- @field StatusCode number
--- @field StatusMessage string
--- @field Success boolean
--- @field Headers table

--- @param options request
--- @return response
function request(options) end

http = {}

--- @param options request
--- @return response
function http.request(options) end

--- @param options request
--- @return response
function http_request(options) end

--- @param text string
function setclipboard(text) end

--- @param text string
function toclipboard(text) end

--- @param fps number
function setfpscap(fps) end
