

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  final FontWeight fontWeight;
  const TextWidget({
    super.key,
    required this.size,
    this.color= Colors.black, 
    required this.text, 
    this.fontWeight = FontWeight.w600
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color,fontSize: size, fontWeight: fontWeight, )
    );
  }
}