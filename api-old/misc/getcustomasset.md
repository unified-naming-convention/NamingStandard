# getcustomasset
**Signature:** `getcustomasset(filename: string, preventcache: boolean?): string` <br>
**Aliases:** N/A <br>
**Description:** getcustomasset takes in `filename` and then returns a valid content id (i.e. rbxasset://foobar) for that respective file. This allows you to load content from file locally instead of having to upload the content onto the cloud. `preventcache` will prevent the `filename` content from being cached allowing you to update it as many times as needed. <br>
**Example:**
```lua
-- Custom Asset Image Displayer, Creates a simple GUI which loads images from a URL inputted.

local function loadCustomAsset(url, filename, reusable)
    local data = game:HttpGet(url)
    writefile(filename, data)
    
    return getcustomasset(filename, reusable)
end

local gui = Instance.new("ScreenGui")
local label = Instance.new("ImageLabel", gui)
label.Size = UDim2.new(0, 500, 0, 500)
local textBox = Instance.new("TextBox", label)
textBox.Size = UDim2.new(1, 0, 0, 25)
textBox.Position = UDim2.new(0, 0, 1, -25)
textBox.FocusLost:Connect(function(enter)
    if enter then
        label.Image = loadCustomAsset(textBox.Text, "displayImage.png",true)
        textBox.Text = ""
    end
end)

gui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
```
