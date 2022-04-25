# request
**Signature:** `request(options: HttpRequest): HttpResponce` <br>
**Aliases:** http.request, http_request <br>
**Description:** Creates an HTTP request using the conventionally made options. <br>
```lua
type HttpRequest = {
  Url: string, -- The URL for the request.
  Method: "GET" | "POST" | "PATCH" | "PUT", -- The HTTP method that will be used by this request. Often GET or POST.
  Headers: {[string]: string}?, -- The headers to be used with this request.
  Cookies: {[string]: string}?, -- A dictionary of cookies to be used.
  Body: string? -- The body for the request.
}

type HttpResponse = {
  Success: boolean,
  StatusCode: number,
  StatusMessage: string,
  Headers: {[string]: string},
  Body: string,
}
```
**Example:**
```lua
request({ Method = "GET", Url = "https://www.google.com/" })
```

**Headers: (NOTE: The prefix (i.e. "SW-User-Identifier") is fundamentally needed for identifying the executor on a web-server)**
| Header   |  Description  |
|----------|:-------------:|
| PREFIX-User-Identifier |  This is data that is specified to each user, and does not change if the script executor gets used across computers |
| PREFIX-Fingerprint |    This is the HardwareID of the user.   |
| User-Agent | An identifier of the executor and the version of it ("EasyExecutor 1.0.0.0") |