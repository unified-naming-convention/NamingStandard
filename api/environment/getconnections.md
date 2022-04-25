# getconnections
**Signature:** `getconnections(signal: RBXScriptSignal): {[number]: ConnectionInfo}` <br>
**Aliases:** N/A <br>
**Description:** Gets all the connections of a signal (event). <br>
```lua
type ConnectionInfo = {
	Enabled: boolean, -- If false the connection does not fire
	ForeignState: boolean, -- Set to true when the lua connection is connected on a foreign state (i.e. core scripts). 
	LuaConnection: boolean, -- True if the connection was made in lua
	Function: any, -- The function of the connection, only set when ForeignState is false
	Thread: thread -- The thread of the connection, only set when ForeignState is false
}

-- Fires the signal with the provided arguments.
ConnectionInfo:Fire(...)

-- Defers the signal with the provided arguments.
-- For more info regarding defered events see: https://devforum.roblox.com/t/beta-deferred-lua-event-handling/1240569
ConnectionInfo:Defer(...)

-- Disconnects the signal
ConnectionInfo:Disconnect()

-- Disables the signal from firing. NOTE: this does not disconnect the signal.
ConnectionInfo:Disable()

-- Enables the signal, allowing it to fire.
ConnectionInfo:Enable()
```
**Example:**
```lua
for i,v in pairs(getconnections(workspace.ChildAdded)) do
	v:Disable() -- ChildAdded events will no longer fire on workspace
end
```
