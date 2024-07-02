// ignore_for_file: prefer_const_constructors, unused_local_variable, unnecessary_new

import 'package:flutter/material.dart';

class CustomPointerCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint linepaint = Paint();
    Paint circlePaint = Paint();
    linepaint.strokeWidth = 20 ;
    linepaint.color = Color.fromARGB(77, 100, 57,0);
    circlePaint.color = Colors.red;


  
    
    circlePaint.style = PaintingStyle.stroke;
    circlePaint.strokeWidth = 22;
    canvas.drawLine(Offset(0,-20), Offset(0, size.height + 300), linepaint);
    canvas.drawCircle(Offset(size.width / 2, size.height/2), 50, circlePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}