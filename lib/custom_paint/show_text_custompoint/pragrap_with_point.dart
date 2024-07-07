import 'dart:ui' as UI;

import 'package:flutter/material.dart';




class PragrapePoints extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    UI.ParagraphStyle paragraphStyle = UI.ParagraphStyle(textAlign: TextAlign.justify,fontSize: 18,);
    UI.TextStyle textStyle = UI.TextStyle(color: Colors.white);
    UI.ParagraphBuilder paragraphBuilder = UI.ParagraphBuilder(paragraphStyle);
    paragraphBuilder.pushStyle(textStyle);
    paragraphBuilder.addText("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.");
    

  
    UI.Paragraph paragraph = paragraphBuilder.build();
    paragraph.layout(UI.ParagraphConstraints(width: size.width));
    canvas.drawParagraph(paragraph, Offset.zero);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}