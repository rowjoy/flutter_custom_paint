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
<img src="https://github.com/rowjoy/flutter_custom_paint/assets/69602585/87579a64-277d-40c9-ac03-c5ccbabc43a4" width="500" height="300">

# Bottom Nivigationber design with custom pointer 

```css
class BottomNavigationCustomPoint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width* 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40 , 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),radius: Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Colors.white10, 10, true);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

body: Stack (
  children: [
    Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: size.width,
        height: 80,
        color: Colors.black,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, 100),
              painter: ButtomNavigationCustomPoint(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                backgroundColor: Colors.amber,
                child: Icon(Icons.card_giftcard,),
                elevation: 0.1,
                onPressed: (){}
              ),
            ),

            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   IconButton(onPressed: null, icon: Icon(Icons.home,color: Colors.teal,)),
                   IconButton(onPressed: null, icon: Icon(Icons.history,color: Colors.black,)),
                   Container(width: size.width * 0.20,),
                   IconButton(onPressed: null, icon: Icon(Icons.dashboard,color: Colors.black,)),
                   IconButton(onPressed: null, icon: Icon(Icons.more,color: Colors.black,))
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ],
),

```
<img src="https://github.com/rowjoy/flutter_custom_paint/assets/69602585/9459c41b-ceca-4e1e-9885-848293f030eb" width="400" height="800">
![Screenshot_1720967408](https://github.com/user-attachments/assets/9c59d834-96d3-4b12-aa89-47fdca51cb4c)



