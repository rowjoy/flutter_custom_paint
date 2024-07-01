// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';




class ShapeCustomPainter extends CustomPainter {
  late double strokeWidth;
  ShapeCustomPainter({required this.strokeWidth});
  @override
  void paint(Canvas canvas, Size size) {
     Paint paint = Paint();
     // ignore: unnecessary_this
     paint.strokeWidth = this.strokeWidth;
     paint.color = Colors.black;

     canvas.drawLine(Offset(size.width, 0), Offset(size.width, size.height), paint); //[Right side line ]
     canvas.drawLine(Offset.zero, Offset(size.width, 0), paint); // [Top line ]
     canvas.drawLine(Offset.zero, Offset(0, size.height), paint); // [Left side line ]
     canvas.drawLine(Offset(0, size.height), Offset(size.width, size.height), paint); // [Bottom side]

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}