# Degrad

Degrad is a microlibrary for converting between degrees and radians.

Degrad works by implementing a `Degradable` protocol on `Float`, `Double`, and `CGFloat`.

✓ Terse unit syntax

```swift

180.degrees
// 3.1415926535897931

π.radians
// 180

```

✓ Converter functions (note that these work the other way)

```swift

deg2rad(90)
// 1.5707963267948966

rad2deg(π / 2)
// 90

```

✓ Fancy unicode pi constant and degree symbol postfix operator (if you're into that kind of thing)

```swift

π
// 3.1415926535897931

45°
// 0.78539816339744828

```
