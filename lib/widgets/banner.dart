

import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key, required this.imgPath});
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.6),
            Theme.of(context).primaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1, child: Image.asset(imgPath),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const TextWidget(
                  size: 20, text: 'Special Deal for January',
                  color: Colors.white,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 30),
                    backgroundColor: Theme.of(context).colorScheme.secondary
                  ),
                  onPressed: (() {}),
                  child: const TextWidget(size: 16,text: 'Buy now',color: Colors.white,)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}