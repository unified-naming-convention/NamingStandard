--- @meta

--- @param f function | number
--- @param index number
--- @return any
function debug.getconstant(f, index) end

--- @param f function | number
function debug.getconstants(f) end

--- @param f function | number
--- @param index number
--- @param active boolean
--- @return function
function debug.getproto(f, index, active) end

--- @param f function | number
function debug.getprotos(f) end

--- @param level number
--- @param index number?
--- @return any
function debug.getstack(level, index) end

--- @param f function | number
--- @return table
function debug.getupvalues(f) end

--- @param f function | number
--- @param index number
--- @param value any
function debug.setconstant(f, index, value) end

--- @param level number
--- @param index number
--- @param value any
function debug.setstack(level, index, value) end