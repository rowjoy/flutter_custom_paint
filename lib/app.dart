// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/draw_rect/rect_shape.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: CustomPointerShape()
      // home: DrowCircleCanves(),
       home:  DrawRectShape(),
    );
  }
}