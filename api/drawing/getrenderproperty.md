# getrenderproperty
**Signature:** `getrenderproperty(object: DrawingCircle | DrawingSquare | DrawingLine | DrawingText | DrawingImage | DrawingQuad | DrawingTriangle, property: string): any` <br>
**Aliases:** N/A <br>
**Description:** Returns a draw object's property. NOTE: Invokes the '__index' metamethod. <br>
```lua
type DrawingCircle: {
	Radius: number,
	Color: Color3,
	Filled: boolean,
	NumSides: number,
	Position: Vector3,
	Transparency: number 
}

type DrawingSquare: {
	Position: Vector2,
	Size: Vector3,
	Thickness: number,
	Color: Color3,
	Filled: boolean,
	Transparency: number 
}

type DrawingLine: {
	PointA: Vector2,
	PointB:  Vector2,
	Color: Color3,
	Thickness: number,
	Transparency: number 
}

type DrawingText: {
	Text: string,
	Color: Color3,
	OutlineColor: Color3,
	Center: boolean,
	Outline: boolean,
	Position: Vector2,
	Size: number,
	Font: string,
	Transparency: number 
}

type DrawingImage: {
	Data: string,
	Color: Color3,
	Rounding: number,
	Size: number,
	Position: Vector2,
	Transparency: number
}

type DrawingQuad: {
	Color: Color3,
	Filled: boolean,
	Thickness: number,
	Point1: Vector2,
	Point2: Vector2,
	Point3: Vector2,
	Point4: Vector2,
	Transparency: number 
}

type DrawingTriangle: {
	PointA: Vector2,
	PointB: Vector2,
	PointC: Vector2,
	Thickness: number,
	Color: Color3,
	Filled: boolean,
	Transparency: number 
}
```
**Example:**
```lua
local render_obj = Drawing.new("Circle")
print(getrenderproperty(render_obj, "Position")) -- outputs the position of render_obj
```
