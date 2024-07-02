// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/draw_circle/circle_pointer.dart';

class DrowCircleCanves extends StatelessWidget {
  const DrowCircleCanves({super.key});

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
                painter: CustomPointerCircle(),
                size: Size(MediaQuery.of(context).size.width, 200),
              ),
            ),
          ),
        )
      ),
    );
  }
}