import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key, required this.name, required this.img, required this.duration});
  final String name;
  final String img;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img, height: 50,),
          const SizedBox(height: 30,),
          TextWidget(size: 18, text: name),
          const SizedBox(height: 10,),
          TextWidget(size: 14, text: duration,color: Colors.grey,),
        ],
      ),
    );
  }
}