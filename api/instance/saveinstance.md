# saveinstance
**Signature:** `saveinstance(root: Instance | {Instance}, filepath: string?, options: SaveInstanceOptions?)` <br>
**Aliases:** N/A <br>
**Description:** Serializes a instance to its given file format. If `game` is passed as `root`, it serializes the whole game into a place file which is placed into workspace. Otherwise if any other instance is passed, it is serialized to a model file. Likewise if an array of instances is passed, they all get put into a single model file. `filepath` is only applicable within workspace. <br>
```lua
type SaveInstanceOptions = {
    Binary: boolean, -- Default = true, Description: Saves the given instances in binary mode.
    Decompile: boolean, -- Default = false, Description: If true scripts will be decompiled.
    NilInstances: boolean, -- Default = false, Description: Save nil instances.
    RemovePlayerCharacters: boolean, -- Default = true, Description: Ignore player characters while saving.
    SavePlayers: boolean, -- Default = false, Description: Save players and their descendants.
    DecompileTimeout: number, -- Default = 10, Description: If the decompilation run time exceeds this value it gets cancelled.
    MaxThreads: number, -- Default = 3, Description: The number of decompilation threads that can run at once. More threads means it can decompile for scripts at a time.
    DecompileIgnore: {string}, -- Default = {"Chat","CoreGui","CorePackages"}, Description: Scripts inside these services are saved but not decompiled.
    ShowStatus: boolean, -- Default = true, Description: If true, text will be drawn using the Drawing API to show the progress.
    IgnoreDefaultProps: boolean, -- Default = true, Description: When enabled it will ignore default properties while saving.
    IsolateStarterPlayer: boolean, -- Default = false, Description: If enabled, starter player will be cleared and the saved starter player will be placed into folders.
    Callback: (string), -- Default = nil, Description: If set, the serialized data will be sent to the callback instead of to file.
    Clipboard: boolean, -- Default = false, Description: If set to true, the serialized data will be set to the studio clipboard. Useful for saving models.
}
```
**Example:**
```lua
saveinstance(game)
```
