// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/draw_images/draw_pointer.dart';

class DrawImages extends StatelessWidget {
  const DrawImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
             Container(
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                  colors: [Colors.red, Colors.greenAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
               ),
             ),
             ClipPath(
               clipper: RPSCustomPainter(),
               child: Container(
                 color: Colors.white,
               ),
             ),
          ],
        ),
      ),
    );
  }
}