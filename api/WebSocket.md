# WebSocket

The **WebSocket** class provides a simple interface for sending and receiving data over a WebSocket connection.

---

## WebSocket.connect

`🏛️ Constructor`

```lua
function WebSocket.connect(url: string): WebSocket
```

Establishes a WebSocket connection to the specified URL.

### Parameters

 * `url` - The URL to connect to.

### Example

```lua
local ws = WebSocket.connect("ws://localhost:8080")

ws.OnMessage:Connect(function(message)
	print(message)
end)

ws.OnClose:Connect(function()
	print("Closed")
end)

ws:Send("Hello, World!")
```

---

## WebSocket

`🖥️ Class`

```lua
ws = WebSocket.connect(url)
```

### Methods

| Method | Description |
| ------ | ----------- |
| `Send(message: string): ()` | Sends a message over the WebSocket connection. |
| `Close(): ()` | Closes the WebSocket connection. |

### Events

| Event | Description |
| ----- | ----------- |
| `OnMessage(message: string): ()` | Fired when a message is received over the WebSocket connection. |
| `OnClose(): ()` | Fired when the WebSocket connection is closed. |
