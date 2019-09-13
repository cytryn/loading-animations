## [2.0.0] - Renaming convention

### Breaking changes:

#### Naming convention

Since we can have different shapes for the same animation in many case, I decided to change how we call the animations.

For example, the `LoadingFlipCircle()` could be called passing a `BoxShape.rectangle` as a `shape` parameter: `LoadingFlipCircle(shape: BoxShape.rectangle)`.

But since it makes more sense to focus on the animation itself, the shape is now embedded on a [named constructor](https://dart.dev/guides/language/language-tour#named-constructors).

Before v2.0.0:
- circle - `LoadingFlipCircle()`
- square - `LoadingFlipCircle(shape: BoxShape.rectangle)`
  
After v2.0.0: 
- circle - `LoadingFlipping.circle()`
- square - `LoadingFlipping.square()`
  
List of animation changes:
- `LoadingFlipCircle()` -> `LoadingFlipping.circle()` or `.square()`
- `LoadingRotatingSquare()` -> `LoadingRotating.square()`
- `LoadingFlipBox()` -> `LoadingDoubleFlipping.circle()` or `.square()`
- `LoadingBouncingGrid()` -> `LoadingBouncingGrid.circle()` or `.square()`

### Example project

Files got separated from `main.dart` in order to make the examples smaller and more readable.


## [1.0.1] - Updating package details

### Fix:
- Fixing version on pubspec.yaml
- Added full path to example images

## [1.0.0] - First release.

### Additions:

First version released with 4 animations:
- FlipCircle
- RotatingSquare
- FlipBox
- BouncingGrid
