# Cache

The **cache** library provides methods for modifying the internal Instance cache.

Note that some of the methods are only available as global functions. They will be marked as `🌍 Global`.

---

## cache.invalidate

```ts
function invalidate(object: Instance): ()
```

Deletes `object` from the Instance cache. Effectively invalidates `object` as a reference to the underlying Instance.

### Parameters

 * `object` - The object to invalidate.

### Example

```lua
local Lighting = game:GetService("Lighting")
cache.invalidate(game:GetService("Lighting"))
print(Lighting, Lighting == game:GetService("Lighting")) --> Lighting, false
```

---

## cache.iscached

```ts
function iscached(object: Instance): boolean
```

Checks whether `object` exists in the Instance cache.

### Parameters

 * `object` - The object to find.

### Example

```lua
local Lighting = game:GetService("Lighting")
cache.invalidate(Lighting)
print(cache.iscached(Lighting)) --> false
```

---

## cache.replace

```ts
function replace(object: Instance, newObject: Instance): ()
```

Replaces `object` in the Instance cache with `newObject`.

### Parameters

 * `object` - The object to replace.
 * `newObject` - The new object to replace `object` with.

### Example

```lua
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")

cache.replace(Lighting, Players)

print(Lighting) --> Players
```

---

## cloneref `🌍 Global`

```ts
function cloneref(object: Instance): Instance
```

Returns a copy of the Instance reference to `object`. This is useful for managing an Instance without directly referencing it.

### Parameters

 * `object`: The Instance to clone.

### Example

```lua
local Lighting = game:GetService("Lighting")
local LightingClone = cloneref(Lighting)

print(Lighting == LightingClone) --> false
```

---

## compareinstances `🌍 Global`

```ts
function compareinstances(a: Instance, b: Instance): boolean
```

Returns whether objects `a` and `b` both reference the same Instance.

### Parameters

 * `a`: The first Instance to compare.
 * `b`: The second Instance to compare.

### Example

```lua
local Lighting = game:GetService("Lighting")
local LightingClone = cloneref(Lighting)

print(Lighting == LightingClone) --> false
print(compareinstances(Lighting, LightingClone)) --> true
```