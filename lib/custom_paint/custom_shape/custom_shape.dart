// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/custom_shape/shape_custom_painter.dart';

class CustomPointerShape extends StatefulWidget {
   CustomPointerShape({super.key});

  @override
  State<CustomPointerShape> createState() => _CustomPointerShapeState();
}

class _CustomPointerShapeState extends State<CustomPointerShape> {
    double strokeWidth = 0.0;

    void runDoWhileLoop() {
    setState(() {
      int i = 0;
      do {
        i++;
        strokeWidth = double.parse(i.toString());
      } while (i < 10000000000);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Shape paint"),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                 color: Colors.amberAccent,
                 child: CustomPaint(
                   painter: ShapeCustomPainter(strokeWidth: strokeWidth),
                   size: Size( width / 2, height / 2),
                 ),
              ),
              TextButton(
                onPressed: ()=> runDoWhileLoop(),
                child: Text("StrokeWidth"),
              ),
            ],
          )
        ),
      ),
    );
  }
}