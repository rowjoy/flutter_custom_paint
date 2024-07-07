// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_paint/buttom_navigation/custom_point.dart';

class BottomNavigationBer extends StatelessWidget {
  const BottomNavigationBer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: Stack (
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height,
              width: size.width,
              child: Column(
                children: [
                 Container(height: 30,width: size.width,color: Colors.white70,),
            
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: size.width,
              height: 80,
              color: Colors.black,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 100),
                    painter: ButtomNavigationCustomPoint(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      backgroundColor: Colors.amber,
                      child: Icon(Icons.card_giftcard,),
                      elevation: 0.1,
                      onPressed: (){}
                    ),
                  ),

                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         IconButton(onPressed: null, icon: Icon(Icons.home,color: Colors.teal,)),
                         IconButton(onPressed: null, icon: Icon(Icons.history,color: Colors.black,)),
                         Container(width: size.width * 0.20,),
                         IconButton(onPressed: null, icon: Icon(Icons.dashboard,color: Colors.black,)),
                         IconButton(onPressed: null, icon: Icon(Icons.more,color: Colors.black,))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}