import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/banner.dart';
import 'package:food_delivery_app_practice/widgets/button_widget.dart';
import 'package:food_delivery_app_practice/widgets/custom_app_bar.dart';

class PromotePage extends StatefulWidget {
  const PromotePage({super.key});
  static const routeName = 'promote_page';

  @override
  State<PromotePage> createState() => _PromotePageState();
}

class _PromotePageState extends State<PromotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: CustomAppBar(title: 'Promote'),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                    child: BannerWidget(imgPath: 'assets/image/Image_${index+1}.png'),
                  );
                }))
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: ButtonWidget(text: 'Checkout',onPressed:(){},),
            )
          ],
        )
      ),
    );
  }
}