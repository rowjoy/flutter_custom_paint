// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/draw_rect/rect_point.dart';

class DrawRectShape extends StatelessWidget {
  const DrawRectShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey,
              child: CustomPaint(
                painter: RectPoint(),
                size: Size(MediaQuery.of(context).size.width, 300),
              ),
            ),
          ),
        ) 
      ),
    );
  }
}