--- @meta

--- @return boolean
function checkcaller() end

--- @param func function
--- @return function func
function clonefunction(func) end

--- @return userdata
function getcallingscript() end

--- @param func function
--- @param hook function
--- @return function
function hookfunction(func, hook) end

--- @param func function
--- @param hook function
--- @return function
function replaceclosure(func, hook) end

--- @param func function
--- @return boolean
function iscclosure(func) end

--- @param func function
--- @return boolean
function islclosure(func) end

--- @param func function
--- @return boolean
function isexecutorclosure(func) end

--- @param func function
--- @return function
function newcclosure(func) end