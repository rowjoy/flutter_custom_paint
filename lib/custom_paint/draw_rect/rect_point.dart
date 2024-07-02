// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class RectPoint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final  span = new TextSpan(
      style: new TextStyle(color: Colors.white, fontSize: 30),
      text: 'x',
    );
    
    TextPainter tp = new TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    tp.layout();
    
    Offset textOffset = Offset(
      (size.width / 2) - (tp.width / 2),
      (size.height / 2) - (tp.height / 2),
    );


    Paint paint = Paint();
    // Paint drawRRect = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;
    // Offset center = Offset(size.width / 2 , size.height/ 2);
    // canvas.drawRect(Rect.fromLTRB(10, 10, 100, 200), paint);
    // canvas.drawOval(Rect.fromLTRB(20, 30, 50, 100), drawRRect);
     //canvas.drawRRect(RRect.fromLTRBR(20, 25, 100, 100, Radius.circular(10)), drawRRect);

     Rect bigrect = Rect.fromLTRB(10, 20, 100, 200);
     Rect smallRect = Rect.fromLTRB(20, 30, 100, 180);
     
     RRect rRectbig = RRect.fromRectXY(bigrect, 75, 25);
     RRect rRectSmall = RRect.fromRectXY(smallRect, 75, 25);
     canvas.drawDRRect(
      rRectbig,rRectSmall,
      paint
    );

    tp.paint(canvas, textOffset);
     
  }



  

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}


class ShowSomeText  extends CustomPaint{
  
 

}