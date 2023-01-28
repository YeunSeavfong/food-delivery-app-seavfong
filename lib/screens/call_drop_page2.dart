import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/call_drop_building.dart';

import '../widgets/text_widget.dart';
import 'call_drop_page3.dart';

class CallDropedPage2 extends StatefulWidget {
  const CallDropedPage2({super.key});
  static const routeName = 'call_drop_page2';

  @override
  State<CallDropedPage2> createState() => _CallDropedPage2State();
}

class _CallDropedPage2State extends State<CallDropedPage2> {
  @override
  Widget build(BuildContext context) {
    return CallDropBuilding(
      onPressedSubmit: () => Navigator.pushNamed(context, CallDropedPage3.routeName),
      content: Column(
        children: [
          _picture(context),
          TextWidget(size: 24, text: 'Enjoy your meal!',color:Theme.of(context).primaryColor,),
  
        ],
      )
    );
  }
  //! pricture
  Widget _picture(BuildContext context) {
    return Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(width: 5,color: Theme.of(context).primaryColor),
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/image/food_image/food_3.png'),
                radius: 75,
              ),
            );
  }
}