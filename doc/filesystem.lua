--- @meta

--- @param path string
--- @return string
function readfile(path) end

--- @param path string
--- @return { [number]: string }
function listfiles(path) end

--- @param path string
--- @param data string
function writefile(path, data) end

--- @param path string
function makefolder(path) end

--- @param path string
--- @param data string
function appendfile(path, data) end

--- @param path string
--- @return boolean
function isfile(path) end

--- @param path string
function isfolder(path) end

--- @param path string
function delfile(path) end

--- @param path string
function delfolder(path) end
