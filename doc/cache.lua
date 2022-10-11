--- @meta

cache = {}

--- @param object userdata
function cache.invalidate(object) end

--- @param object userdata
function cache.iscached(object) end

--- @param object userdata
--- @param newObject userdata
function cache.replace(object, newObject) end

--- @param object userdata
function cloneref(object) end

--- @param a userdata
--- @param b userdata
function compareinstances(a, b) end
