--- @meta

--- @param object userdata
--- @param distance number?
--- @param event string?
function fireclickdetector(object, distance, event) end

--- @class connection
--- @field Enabled boolean
--- @field ForeignState boolean
--- @field LuaConnection boolean
--- @field Function function?
--- @field Thread thread?
local connection = {
	--- @param self connection
	Fire = function(self, ...) end,
	--- @param self connection
	Defer = function(self, ...) end,
	--- @param self connection
	Disconnect = function(self) end,
	--- @param self connection
	Disable = function(self) end,
	--- @param self connection
	Enable = function(self) end
}

--- @param signal userdata
--- @return { [number]: connection }
function getconnections(signal) end

--- @param path string
--- @param nocache boolean
--- @return string
function getcustomasset(path, nocache) end

--- @param object userdata
--- @param property string
--- @return any, boolean
function gethiddenproperty(object, property) end

--- @return userdata
function gethui() end

--- @return table
function getinstances() end

--- @return table
function getnilinstances() end

--- @param object userdata
--- @param property string
--- @return boolean
function isscriptable(object, property) end

--- @param object userdata
--- @param property string
--- @param value any
function sethiddenproperty(object, property, value) end

--- @param data string
--- @return boolean
function setrbxclipboard(data) end

--- @param object userdata
--- @param property string
--- @param value boolean
--- @return boolean
function setscriptable(object, property, value) end
