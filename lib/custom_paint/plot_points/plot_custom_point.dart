import 'dart:ui';

import 'package:flutter/material.dart';

class PlotPoints extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint();
     paint.style = PaintingStyle.fill;
     paint.color = Colors.amberAccent;
     paint.strokeWidth = 5;
     
    
     List<Offset> points = [
        Offset.zero,
        Offset(size.width, 0),
        Offset(size.width / 2, size.height / 2),
        Offset.zero
     ];

    canvas.drawPoints(PointMode.polygon, points, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}