--- @meta

--- @param includetables boolean
--- @return { [number]: function | userdata | table }
function getgc(includetables) end

--- @return { [string]: any }
function getgenv() end

--- @param excludecore boolean?
--- @return { [number]: userdata }
function getloadedmodules(excludecore) end

--- @return { [string]: any }
function getrenv() end

--- @return { [number]: userdata }
function getrunningscripts() end

--- @param script userdata
--- @return string
function getscriptbytecode(script) end

--- @param script userdata
--- @return string
function dumpstring(script) end

--- @param script userdata
--- @return function
function getscriptclosure(script) end

--- @param script userdata
--- @return function
function getscriptfunction(script) end

--- @param script userdata
--- @return string
function getscripthash(script) end

--- @return { [number]: userdata }
function getscripts() end

--- @param script userdata
--- @return { [string]: any }
function getsenv(script) end

--- @return number
function getthreadidentity() end

--- @return number
function getidentity() end

--- @return number
function getthreadcontext() end

--- @param identity number
function setthreadidentity(identity) end

--- @param identity number
function setidentity(identity) end

--- @param identity number
function setthreadcontext(identity) end
