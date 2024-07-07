// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/plot_points/plot_custom_point.dart';

class PlotCustomPoint extends StatelessWidget {
  const PlotCustomPoint({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: size.height / 2,
              width: size.width,
              color: Colors.grey,
              child: CustomPaint(
                painter: PlotPoints(),
                size: Size(300, 400),
              )
            ),
          ),
        ),
      ),
    );
  }
}