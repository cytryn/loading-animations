## [2.2.0] - Null safety update

Thanks to @Ali1Ammar for the update on null safety

## [2.1.0] - New Animations

### Animations

Added 4 more animations:
- Bouncing Line
  - LoadingBouncingLine.circle()
  - LoadingBouncingLine.square()
- Bumping Line
  - LoadingBumpingLine.circle()
  - LoadingBumpingLine.square()
- Fading Line
  - LoadingFadingLine.circle()
  - LoadingFadingLine.square()
- Jumping Line
  - LoadingJumpingLine.circle()
  - LoadingJumpingLine.circle()

### Example project

Added all the new animations to the example project.


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

### New animation!

Added LoadingFilling.square() new animation. Please refer to the example project for more details.

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
