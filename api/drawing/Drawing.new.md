# Drawing.new
**Signature:** `Drawing.new(class: string): DrawingCircle | DrawingSquare | DrawingLine | DrawingText | DrawingImage | DrawingQuad | DrawingTriangle` <br>
**Aliases:** N/A <br>
**Description:** Creates and returns a new draw object of type 'class' <br>
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
	From: Vector2,
	To:  Vector2,
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
	PointA: Vector2,
	PointB: Vector2,
	PointC: Vector2,
	PointD: Vector2,
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
local circle = Drawing.new('Circle');
circle.Radius = 50;
circle.Color = Color3.fromRGB(255, 255, 255);
circle.Filled = false;
circle.NumSides = 32; -- Circles aren't drawn perfectly; more "sides" = more lag
circle.Position = Vector2.new(20, 20); -- pixels offset from top right
circle.Transparency = 0.9;

-- don't forget to clean up after yourself!

for obj in next, {circle, square, line, text, image, quad, triangle} do
    obj:Destroy(); -- or :Remove()
end
```
