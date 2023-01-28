import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/call_drop_building.dart';
import 'package:food_delivery_app_practice/screens/call_drop_page2.dart';

import '../widgets/text_widget.dart';

class CallDropedPage1 extends StatefulWidget {
  const CallDropedPage1({super.key});
  static const routeName = 'call_drop_page1';

  @override
  State<CallDropedPage1> createState() => _CallDropedPage1State();
}

class _CallDropedPage1State extends State<CallDropedPage1> {
  @override
  Widget build(BuildContext context) {
    return CallDropBuilding(
      onPressedSubmit: () => Navigator.pushNamed(context, CallDropedPage2.routeName),
      content: Column(
        children: [
          _profile(context),
          TextWidget(size: 24, text: 'Thank you!',color:Theme.of(context).primaryColor,),
          TextWidget(size: 24, text: 'Order completed',color:Theme.of(context).primaryColor,),
        ],
      )
    );
  }
  //! profile
  Container _profile(BuildContext context) {
    return Container(
              width: 180,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(width: 5,color: Theme.of(context).primaryColor),
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/image/profile.png'),
            );
  }
}