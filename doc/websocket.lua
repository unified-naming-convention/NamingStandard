--- @meta

WebSocket = {
	--- @param url string
	--- @return WebSocket
	connect = function(url) end
}

--- @class RBXScriptSignal
local RBXScriptSignal = {
	--- @param self RBXScriptSignal
	Wait = function(self) end,
	--- @param self RBXScriptSignal
	--- @param func function
	Connect = function(self, func) end
}

--- @class WebSocket
local WebSocket = {
	--- @type RBXScriptSignal
	OnMessage = nil,
	--- @type RBXScriptSignal
	OnClose = nil,
	--- @type function
	--- @param message string
	Send = function(message) end
}