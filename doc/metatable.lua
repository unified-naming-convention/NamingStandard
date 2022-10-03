--- @meta

--- @param object table
--- @return table
function getrawmetatable(object) end

--- @param object table
--- @param method string
--- @param hook function
function hookmetamethod(object, method, hook) end

--- @return string
function getnamecallmethod() end

--- @param object table
--- @return boolean
function isreadonly(object) end

--- @param object table
--- @param metatable table
function setrawmetatable(object, metatable) end

--- @param object table
--- @param readonly boolean
function setreadonly(object, readonly) end
