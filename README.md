# flutter_custom_paint

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# flutter_custom_paint

# Make Bangladesh country Flag

```css
class CustomPointerCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint linepaint = Paint();
    Paint circlePaint = Paint();
    linepaint.strokeWidth = 20 ;
    linepaint.color = Color.fromARGB(77, 100, 57,0);
    circlePaint.color = Colors.red;
    canvas.drawLine(Offset(0,-20), Offset(0, size.height + 300), linepaint);
    canvas.drawCircle(Offset(size.width / 2, size.height/2), 50, circlePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
```
![Screenshot_1719913035 (https://github.com/rowjoy/flutter_custom_paint/assets/69602585/87579a64-277d-40c9-ac03-c5ccbabc43a4) with <img src="https://github.com/rowjoy/flutter_custom_paint/assets/69602585/87579a64-277d-40c9-ac03-c5ccbabc43a4" width="100" height="100">





