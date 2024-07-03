// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/draw_images/draw_pointer.dart';

class DrawImages extends StatelessWidget {
  const DrawImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
              child: CustomPaint(
                painter: DrawImagesPainter(),
                size: Size(MediaQuery.of(context).size.width, 400),
              ),
            ),
          ),
        ),
      ),
    );
  }
}