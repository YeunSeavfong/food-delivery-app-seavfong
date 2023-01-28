
import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/screens/chat_call.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class UserChatBar extends StatefulWidget {
  const UserChatBar({super.key});

  @override
  State<UserChatBar> createState() => _UserChatBarState();
}

class _UserChatBarState extends State<UserChatBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 16,),
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 35,
              child: Image.asset('assets/image/profile.png'),
            ),
          ),
          const SizedBox(width: 20,),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const TextWidget(size: 20, text: 'Dianne Russel'),
                const SizedBox(height: 10,),
                const TextWidget(
                  size: 14, text: 'Online',
                  fontWeight: FontWeight.w400, color: Colors.grey,),
              ],
            )),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, ChatCallPage.routeName),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor.withAlpha(10),
                child: Icon(Icons.call_outlined, color: Theme.of(context).primaryColor,),
              ),
            )
            )
        ],
      ),
    );
  }
}