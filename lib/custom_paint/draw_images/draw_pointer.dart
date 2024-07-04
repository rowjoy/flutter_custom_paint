import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
             
    Path path_0 = Path();
    path_0.moveTo(size.width*0.6267750,size.height*-0.0030000);
    path_0.quadraticBezierTo(size.width*0.7089250,size.height*0.3027143,size.width*0.7101000,size.height*0.3576857);
    path_0.cubicTo(size.width*0.7140000,size.height*0.4160714,size.width*0.1829250,size.height*0.3106286,size.width*0.1849250,size.height*0.4401143);
    path_0.cubicTo(size.width*0.1899750,size.height*0.5645429,size.width*0.7094750,size.height*0.4625286,size.width*0.7009750,size.height*0.5155143);
    path_0.quadraticBezierTo(size.width*0.7204500,size.height*0.6322571,size.width*0.6271000,size.height*0.9994000);
    path_0.lineTo(size.width*1.0025000,size.height*0.9985714);
    path_0.lineTo(size.width*1.0022250,size.height*0.0033714);
    path_0.lineTo(size.width*0.6267750,size.height*-0.0030000);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  

  
}
