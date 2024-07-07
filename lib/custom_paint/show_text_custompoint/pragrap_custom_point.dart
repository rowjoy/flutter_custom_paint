// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'pragrap_with_point.dart';

class PragrapCustomPoint extends StatelessWidget {
   PragrapCustomPoint({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height:size.width ,
          width: size.width,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomPaint(
              painter: PragrapePoints(),
              size: Size(300, 400),
            ),
          ),
        ),
      ),
    );
  }
}