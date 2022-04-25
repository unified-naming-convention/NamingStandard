# WebSocket.connect
**Signature:** `WebSocket.connect(url: string): WebSocket` <br>
**Aliases:** N/A <br>
**Description:** Attempts to connect to the websocket url provided. <br>
**Example:**
```lua
local socket = WebSocket.connect("ws://localhost:8126/foo")

socket.OnClose:Connect(function() print'closed' end)
socket.OnMessage:Connect(function(msg)
    print(msg)
end)

socket:Send("Hello")
```

# WebSocket:Send
**Signature:** `WebSocket:Send(msg: string)` <br>
**Aliases:** N/A <br>
**Description:** Sends the provided message msg to the server.<br>
**Example:**
```lua
local socket = WebSocket.connect("ws://localhost:8126/foo")
WebSocket:Send("Hello!")
```

# WebSocket:Close
**Signature:** `WebSocket:Close()` <br>
**Aliases:** N/A <br>
**Description:** Closes the opened connection. <br>
**Example:**
```lua
local socket = WebSocket.connect("ws://localhost:8126/foo")
socket:Close()
```


# Events
**OnMessage Signature:** `signal WebSocket.OnMessage(msg: string)` <br>
**OnClose Signature:** `signal WebSocket.OnClose()` <br>

**OnMessage Description:** This event is fired when a message is sent from the server. <br>
**OnClose Description:** This event is fired when the WebSocket is closed, by either the WebSocket:Close method or by the server. <br>

**Example:**
```lua
local socket = WebSocket.connect("ws://localhost:8126/foo")

socket.OnClose:Connect(function() print'closed' end)
socket.OnMessage:Connect(function(msg)
    print(msg)
end)

socket:Send("Hello")
```
