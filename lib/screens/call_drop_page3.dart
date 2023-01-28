import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/call_drop_building.dart';
import 'package:food_delivery_app_practice/screens/promote_page.dart';
import 'package:food_delivery_app_practice/widgets/item_card_widget.dart';

import '../widgets/text_widget.dart';

class CallDropedPage3 extends StatefulWidget {
  const CallDropedPage3({super.key});
  static const routeName = 'call_drop_page3';

  @override
  State<CallDropedPage3> createState() => _CallDropedPage3State();
}

class _CallDropedPage3State extends State<CallDropedPage3> {
  @override
  Widget build(BuildContext context) {
    return CallDropBuilding(
      onPressedSubmit: () {
        Navigator.pushNamed(context, PromotePage.routeName);
      },
      content: Column(
        children: [
          _restaurant(context),
          TextWidget(size: 24, text: 'Enjoy your meal!',color:Theme.of(context).primaryColor,),
  
        ],
      )
    );
  }
  //! profile
  Widget _restaurant(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ItemCardWidget(
        name: 'Recto Food', img: 'assets/image/logo/logo_3.png', duration: ''),
    );
  }
}