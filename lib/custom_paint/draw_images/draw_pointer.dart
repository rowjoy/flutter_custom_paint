import 'dart:ui' as ui;

import 'package:flutter/material.dart';



class DrawImagesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
    ..strokeWidth = 2
    ..style = PaintingStyle.fill
    ..shader = ui.Gradient.linear(Offset(size.width /2 , 0), Offset(size.width / 2 , size.height), [ Colors.amberAccent, Colors.greenAccent]);
    canvas.clipRect(Offset.zero & size);
    canvas.drawPaint(paint);
  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}