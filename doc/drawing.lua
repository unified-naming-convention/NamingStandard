--- @meta

--- @alias Type
---|> "Line"
---| "Text"
---| "Image"
---| "Circle"
---| "Square"
---| "Quad"
---| "Triangle"

Drawing = {}

--- @class Drawing.Font
--- @type { [string]: number? }
Drawing.Fonts = {
	UI = 0,
	System = 1,
	Plex = 2,
	Monospace = 3
}

--- @class Drawing
--- @field Visible boolean
--- @field ZIndex number
--- @field Transparency number
--- @field Color userdata
--- @field Destroy function
--- @field From userdata
--- @field To userdata
--- @field Thickness number
--- @field Text string
--- @field TextBounds userdata
--- @field Font number
--- @field Size number | userdata
--- @field Position userdata
--- @field Center boolean
--- @field Outline boolean
--- @field OutlineColor userdata
--- @field Data string
--- @field Rounding number
--- @field NumSides number
--- @field Radius number
--- @field Filled boolean
--- @field PointA userdata
--- @field PointB userdata
--- @field PointC userdata
--- @field PointD userdata
local Object = {}

--- @param type Type
--- @return Drawing
function Drawing.new(type) end

function cleardrawcache() end

--- @param drawing Drawing
--- @param property string
--- @return any
function getrenderproperty(drawing, property) end

--- @param object any
--- @return boolean
function isrenderobj(object) end

--- @param drawing Drawing
--- @param property string
--- @param value any
function setrenderproperty(drawing, property, value) end