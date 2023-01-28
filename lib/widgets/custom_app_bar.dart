import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              height: 70,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).primaryColor.withOpacity(0.7),
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 20,),
                  TextWidget(size: 24, text: title)
                ],
              ),
            ),
    );
  }
}