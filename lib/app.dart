// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'custom_paint/show_text_custompoint/pragrap_custom_point.dart';

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
      // home:  DrawRectShape(),
      // home: DrawImages(),
      //home: BottomNavigationBer(),
      // home: PlotCustomPoint(),
      home: PragrapCustomPoint(),
    );
  }
}